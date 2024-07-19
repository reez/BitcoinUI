//
//  QRCodeView.swift
//
//
//  Created by Matthew Ramsden on 9/28/23.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

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

public struct QRCodeView: View {
    @State private var viewState = CGSize.zero
    let screenBounds = UIScreen.main.bounds
    public var qrCodeType: QRCodeType

    public init(qrCodeType: QRCodeType) {
        self.qrCodeType = qrCodeType
    }

    public var body: some View {
        Image(uiImage: generateQRCode(from: qrCodeType.qrString))
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .padding()
            .applyFidgetEffect(viewState: $viewState)
            .gesture(dragGesture())
    }

    private func generateQRCode(from string: String) -> UIImage {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }
        return UIImage(systemName: "xmark.circle") ?? UIImage()
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
        QRCodeView(qrCodeType: .lightning("bitcoinqrcode"))
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
    QRCodeView(qrCodeType: .bitcoin("bitcoinqrcode"))
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
