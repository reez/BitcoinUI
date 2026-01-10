//
//  QRCodeView.swift
//
//
//  Created by Matthew Ramsden on 9/28/23.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

#if canImport(UIKit)
    import UIKit
#elseif canImport(AppKit)
    import AppKit
#endif

public enum QRCodeType {
    case bitcoin(String)
    case lightning(String)
    case bip21(String)

    var qrString: String {
        switch self {
        case .bitcoin(let address):
            return "bitcoin:\(address)"
        case .lightning(let invoice):
            return "lightning:\(invoice)"
        case .bip21(let uri):
            return uri
        }
    }
}

public enum QRCodeErrorCorrectionLevel: String {
    case low = "L"
    case medium = "M"
    case quartile = "Q"
    case high = "H"
}

public struct QRCodeView: View {
    @State private var viewState = CGSize.zero
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    public var qrCodeType: QRCodeType
    private let cornerRadius: CGFloat
    private let quietZone: CGFloat
    private let errorCorrectionLevel: QRCodeErrorCorrectionLevel
    private let foregroundColor: Color
    private let backgroundColor: Color
    private let uppercasesBech32: Bool

    public init(
        qrCodeType: QRCodeType,
        cornerRadius: CGFloat = 0,
        quietZone: CGFloat = 24,
        errorCorrectionLevel: QRCodeErrorCorrectionLevel = .medium,
        foregroundColor: Color = .black,
        backgroundColor: Color = .white,
        uppercasesBech32: Bool = false
    ) {
        self.qrCodeType = qrCodeType
        self.cornerRadius = cornerRadius
        self.quietZone = quietZone
        self.errorCorrectionLevel = errorCorrectionLevel
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.uppercasesBech32 = uppercasesBech32
    }

    public var body: some View {
        let resolvedCornerRadius = max(cornerRadius, 0)
        let qrString = normalizedQRCodeString()

        return generateQRCodeImage(from: qrString)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .padding(quietZone)
            .background(
                RoundedRectangle(cornerRadius: resolvedCornerRadius, style: .continuous)
                    .fill(backgroundColor)
            )
            .clipShape(
                RoundedRectangle(cornerRadius: resolvedCornerRadius, style: .continuous)
            )
            .padding()
            .applyFidgetEffect(viewState: $viewState, reduceMotion: reduceMotion)
            .gesture(dragGesture())
    }

    private func generateQRCodeImage(from string: String) -> Image {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue(errorCorrectionLevel.rawValue, forKey: "inputCorrectionLevel")

        if let outputImage = filter.outputImage {
            let coloredImage = applyColors(to: outputImage) ?? outputImage
            if let cgImage = context.createCGImage(coloredImage, from: coloredImage.extent) {
                #if canImport(UIKit)
                    return Image(uiImage: UIImage(cgImage: cgImage))
                #elseif canImport(AppKit)
                    let size = CGSize(width: cgImage.width, height: cgImage.height)
                    let nsImage = NSImage(cgImage: cgImage, size: size)
                    return Image(nsImage: nsImage)
                #endif
            }
        }
        return Image(systemName: "xmark.circle")
    }

    private func applyColors(to image: CIImage) -> CIImage? {
        let filter = CIFilter.falseColor()
        filter.inputImage = image
        filter.color0 = ciColor(from: foregroundColor)
        filter.color1 = ciColor(from: backgroundColor)
        return filter.outputImage
    }

    private func ciColor(from color: Color) -> CIColor {
        #if canImport(UIKit)
            return CIColor(color: UIColor(color))
        #elseif canImport(AppKit)
            return CIColor(color: NSColor(color)) ?? CIColor(red: 0, green: 0, blue: 0)
        #endif
    }

    private func normalizedQRCodeString() -> String {
        guard uppercasesBech32 else {
            return qrCodeType.qrString
        }
        return uppercasedBech32(in: qrCodeType.qrString)
    }

    private func uppercasedBech32(in string: String) -> String {
        guard let schemeSeparator = string.firstIndex(of: ":") else {
            return string
        }

        let scheme = string[..<schemeSeparator].lowercased()
        let schemePrefix = string[..<string.index(after: schemeSeparator)]
        let remainder = String(string[string.index(after: schemeSeparator)...])

        switch scheme {
        case "bitcoin":
            return schemePrefix + uppercasedBitcoinURI(remainder)
        case "lightning":
            return schemePrefix + remainder.uppercased()
        default:
            return string
        }
    }

    private func uppercasedBitcoinURI(_ uri: String) -> String {
        let parts = uri.split(separator: "?", maxSplits: 1, omittingEmptySubsequences: false)
        let address = String(parts[0]).uppercased()
        guard parts.count > 1 else {
            return address
        }

        let query = String(parts[1])
        let updatedQuery =
            query
            .split(separator: "&", omittingEmptySubsequences: false)
            .map { pair -> String in
                let keyValue = pair.split(
                    separator: "=",
                    maxSplits: 1,
                    omittingEmptySubsequences: false
                )
                guard keyValue.count == 2 else {
                    return String(pair)
                }
                let key = String(keyValue[0])
                let value = String(keyValue[1])
                if key.lowercased() == "lightning" {
                    return "\(key)=\(value.uppercased())"
                }
                return String(pair)
            }
            .joined(separator: "&")

        return "\(address)?\(updatedQuery)"
    }

    private func dragGesture() -> some Gesture {
        DragGesture()
            .onChanged(handleDragChanged(_:))
            .onEnded(handleDragEnded(_:))
    }

    private func handleDragChanged(_ value: DragGesture.Value) {
        let translation = value.translation
        let multiplier: CGFloat = 0.05
        viewState.width = -translation.width * multiplier
        viewState.height = -translation.height * multiplier
    }

    private func handleDragEnded(_ value: DragGesture.Value) {
        withAnimation {
            self.viewState = .zero
        }
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView(qrCodeType: .lightning("bitcoinqrcode"), cornerRadius: 20)
        QRCodeView(qrCodeType: .lightning("lightingqrcode"))
        QRCodeView(
            qrCodeType:
                .bip21(
                    "BITCOIN:TB1Q05G8L05SGQSNZUC2MRMQ0CHLQ7KTXTCE4JS5DJ?amount=1.23456&message=Monday%20Wallet&lightning=LNTBS1234560U1PNF4QFUDQ4F4HKUERP0YS9WCTVD3JHGNP4Q235EGP5U2NEC2DDCZA8EYKPD3GL3G0ES0M7GNCARZEUWUW6XHPQQPP56Y3KWCPGAJUQW2FFE83XZMNECCX9TF0G7JE6PN9QHN2Y75SHG7YSSP5RACFNW06S4AVX77KEUC00G0LZVFEZHZ6L3Y9XK8SVS9N9ZM4KJWQ9QYYSGQCQPCXQRRSSRZJQDCADLTAWH0Z6QMJ6QL2QR5T4NDVK5XZ0582AG98DGRZ9ML37HHJKZK64UQQ99GQQUQQQQQQQQQQLGQQJQVHZP42NU240ZC9FZQZGL7NH08N6DGFJ9WM2WR4E2YYGEC82FMCNJ94M8K43XFU07GWA3LQDDSS23H96L2AH7SKVAG4MPGWPTLCTJA0CQML9APG&lno=LNO1QGS0V8HW8D368Q9YW7SX8TEJK2AUJLYLL8CP7TZZYH5H8XYPPQQQQQQYZPWJAT8PJQ8F5QK7D8DR77SRN4HQSPGUH6X3QQQ2P4XK7MNYV9UJQ4MPD3KX2AQSESPHR4HA046AUTGRWTGRAGQW3WKD4J6SCF7SAT4Q5A4QVGH0786772CZKDRW9SMJV0PPSU9HM2R7TMD96C098DSEJKALTYEWTQUTZQLD9XNQYQ7KR5TNWNX259ZA3YP043YXCDFGTZ88R9V67NLDZT7CJ6CZ2N257GQRXK2H9QJ96W8P49F5CDZVZNQEC4YTK2W97GTEST57SXKH2R7TKDL5PKDQYV4HS55NQMTLNTQMFK2RNZVRTNGRHFPA7DV2533PJ2Z5YA77D7DGTMV7DHZKN4TLTAR6LRL8RC3534ASQYPWZX48S6WXVKA95MP02UWG3LX6ZCSSY5NJGXA2V9MKG58JH88M4EPSTYDC4YTQU8W439S3F8GSA5T73PHU"
                )
        )
    }
}

#Preview {
    QRCodeView(qrCodeType: .bitcoin("bitcoinqrcode"), cornerRadius: 20)
}
#Preview {
    QRCodeView(qrCodeType: .lightning("lightingqrcode"))
}
#Preview {
    QRCodeView(
        qrCodeType:
            .bip21(
                "BITCOIN:TB1Q05G8L05SGQSNZUC2MRMQ0CHLQ7KTXTCE4JS5DJ?amount=1.23456&message=Monday%20Wallet&lightning=LNTBS1234560U1PNF4QFUDQ4F4HKUERP0YS9WCTVD3JHGNP4Q235EGP5U2NEC2DDCZA8EYKPD3GL3G0ES0M7GNCARZEUWUW6XHPQQPP56Y3KWCPGAJUQW2FFE83XZMNECCX9TF0G7JE6PN9QHN2Y75SHG7YSSP5RACFNW06S4AVX77KEUC00G0LZVFEZHZ6L3Y9XK8SVS9N9ZM4KJWQ9QYYSGQCQPCXQRRSSRZJQDCADLTAWH0Z6QMJ6QL2QR5T4NDVK5XZ0582AG98DGRZ9ML37HHJKZK64UQQ99GQQUQQQQQQQQQQLGQQJQVHZP42NU240ZC9FZQZGL7NH08N6DGFJ9WM2WR4E2YYGEC82FMCNJ94M8K43XFU07GWA3LQDDSS23H96L2AH7SKVAG4MPGWPTLCTJA0CQML9APG&lno=LNO1QGS0V8HW8D368Q9YW7SX8TEJK2AUJLYLL8CP7TZZYH5H8XYPPQQQQQQYZPWJAT8PJQ8F5QK7D8DR77SRN4HQSPGUH6X3QQQ2P4XK7MNYV9UJQ4MPD3KX2AQSESPHR4HA046AUTGRWTGRAGQW3WKD4J6SCF7SAT4Q5A4QVGH0786772CZKDRW9SMJV0PPSU9HM2R7TMD96C098DSEJKALTYEWTQUTZQLD9XNQYQ7KR5TNWNX259ZA3YP043YXCDFGTZ88R9V67NLDZT7CJ6CZ2N257GQRXK2H9QJ96W8P49F5CDZVZNQEC4YTK2W97GTEST57SXKH2R7TKDL5PKDQYV4HS55NQMTLNTQMFK2RNZVRTNGRHFPA7DV2533PJ2Z5YA77D7DGTMV7DHZKN4TLTAR6LRL8RC3534ASQYPWZX48S6WXVKA95MP02UWG3LX6ZCSSY5NJGXA2V9MKG58JH88M4EPSTYDC4YTQU8W439S3F8GSA5T73PHU"
            )
    )
}
