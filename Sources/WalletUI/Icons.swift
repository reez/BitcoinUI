//
//  Icons.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

#if canImport(UIKit)

/// This function returns an Image for a given image name (SwiftUI)
/// - Parameter named: name of image file
/// - Returns: Image from resources
public func BitcoinImage(named: String) -> Image {
    return Image(named, bundle: Bundle.module)
}

/// This function returns a UIImage for a given image name (UIKit)
/// - Parameter named: name of image file
/// - Returns: UIImage from resources
public func BitcoinUIImage(named: String) -> UIImage {
    return UIImage(named: named, in: .module, compatibleWith: nil)!
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
                .foregroundColor(Color(UIColor.bitcoinNeutral5))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct IconsView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                Text("Icons")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "dots-group")
                    IconView(named: "double-bed-filled")
                    IconView(named: "") // was github
                    IconView(named: "mattress")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "single-bed-big")
                    IconView(named: "singlebedsettings-group")
                    IconView(named: "switchtriple-group")
                    IconView(named: "triple-bed-big-filled")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "trezor-model-t")
                    IconView(named: "blockstream-jade")
                    IconView(named: "bitbox")
                    IconView(named: "generic-paper-wallet")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "foundation")
                    IconView(named: "cardwallet")
                    IconView(named: "seedplate")
                    IconView(named: "trezor-one")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    IconView(named: "ledger-nano")
                    IconView(named: "keepkey")
                    IconView(named: "coldcard")
                    IconView(named: "cobo-vault")
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
            IconsView()
                .environment(\.colorScheme, .light)
            IconsView()
                .environment(\.colorScheme, .dark)
        }
        
    }
}

#endif
