//
//  Images.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

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

/// A function that returns a Bitcoin Icon `UIImage`
///
/// This is similar to `UIImage` but returns a Bitcoin specific `BitcoinUIImage`
///
/// ```swift
/// BitcoinUIImage(named: "coldcard")
/// ```
/// - Parameter named: The name of the Bitcoin Icon you would like to return.
/// - Returns: The  specific Bitcoin `UIImage`
public func BitcoinUIImage(named: String) -> UIImage {
    guard let image = UIImage(named: named, in: .module, compatibleWith: nil) else {
        assertionFailure("*No BitcoinUI Image Found*")
        return UIImage()
    }
    return image
}

struct IconView: View {
    let named: String

    var body: some View {

        VStack {
            BitcoinImage(named: named)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(UIColor.label))
            Text(named)
                .font(.caption)
                .foregroundColor(.bitcoinNeutral5)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)

    }
}

struct HardwareIllustrationsView: View {
    var body: some View {

        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Hardware Illustrations")
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
        Group {
            HardwareIllustrationsView()
                .environment(\.colorScheme, .light)
            HardwareIllustrationsView()
                .environment(\.colorScheme, .dark)
        }
    }
}
