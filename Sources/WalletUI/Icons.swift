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
                        .padding()
                        .padding(.top, 40.0)

                    HStack {
                        IconView(named: "Gear filled")
                        IconView(named: "Contacts filled")
                        IconView(named: "QR")
                        IconView(named: "Search big")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Home")
                        IconView(named: "Receive")
                        IconView(named: "Send")
                        IconView(named: "Share big")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Lock")
                        IconView(named: "Flip")
                        IconView(named: "Caret left big")
                        IconView(named: "Caret right big")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Caret down big")
                        IconView(named: "Caret up big")
                        IconView(named: "X big")
                        IconView(named: "Check big")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Plus big")
                        IconView(named: "Minus big")
                        IconView(named: "Arrow left big")
                        IconView(named: "Arrow right big")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Arrow down big")
                        IconView(named: "Arrow up big")
                        IconView(named: "Milk filled")
                        IconView(named: "Sofa")
                    }
                    .padding()

                    HStack {
                        IconView(named: "Wikipedia")
                        IconView(named: "Github")
                        IconView(named: "Storybook")
                        IconView(named: "Hand cursor")
                    }
                    .padding()

                }
                .padding()
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
