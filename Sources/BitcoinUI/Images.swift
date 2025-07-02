//
//  Images.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
    import UIKit
#elseif canImport(AppKit)
    import AppKit
#endif

/// A function that returns a Bitcoin Icon `Image`
///
/// This is similar to `Image` but returns a Bitcoin specific `BitcoinImage`
///
/// ```swift
/// BitcoinImage(named: "coldcard")
/// ```
/// - Parameter named: The name of the Bitcoin Icon you would like to return.
/// - Returns: The  specific Bitcoin `Image`
public func BitcoinImage(named: String) -> Image {
    return Image(named, bundle: Bundle.module)
}

#if canImport(UIKit)
    public func BitcoinUIImage(named: String) -> UIImage {
        guard let image = UIImage(named: named, in: .module, compatibleWith: nil) else {
            assertionFailure("*No BitcoinUI Image Found*")
            return UIImage()
        }
        return image
    }
#endif

#if canImport(AppKit)
    public func BitcoinNSImage(named: String) -> NSImage {
        guard let image = Bundle.module.image(forResource: named) else {
            assertionFailure("*No BitcoinUI Image Found*")
            return NSImage()
        }
        return image
    }
#endif

struct IconView: View {
    let named: String

    var body: some View {

        VStack {
            BitcoinImage(named: named)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.primary)
            Text(named)
                .font(.caption)
                .foregroundColor(.bitcoinNeutral5)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)

    }
}

struct IconsView: View {
    var body: some View {

        ZStack {
            Color.bitcoinNeutral1

            VStack {
                Text("Images")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())

                HStack {
                    IconView(named: "bitbox")
                    IconView(named: "blockstream-jade")
                    IconView(named: "cobo-vault")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                HStack {
                    IconView(named: "coldcard")
                    IconView(named: "foundation-passport")
                    IconView(named: "generic-hardware-wallet")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                HStack {
                    IconView(named: "keepkey")
                    IconView(named: "ledger-nano")
                    IconView(named: "opendime")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                HStack {
                    IconView(named: "seedplate")
                    IconView(named: "trezor-model-t")
                    IconView(named: "trezor-one")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())

        }
        .edgesIgnoringSafeArea(.all)

    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}

#Preview {
    IconsView()
}
