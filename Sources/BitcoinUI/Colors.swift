//
//  Colors.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

extension Color {
    public static var bitcoinOrange: Color {
        Color(
            light: Color(red: 247 / 255, green: 147 / 255, blue: 26 / 255),
            dark: Color(red: 248 / 255, green: 155 / 255, blue: 42 / 255)
        )
    }

    public static var bitcoinRed: Color {
        Color(
            light: Color(red: 235 / 255, green: 87 / 255, blue: 87 / 255),
            dark: Color(red: 236 / 255, green: 99 / 255, blue: 99 / 255)
        )
    }

    public static var bitcoinGreen: Color {
        Color(
            light: Color(red: 39 / 255, green: 174 / 255, blue: 96 / 255),
            dark: Color(red: 54 / 255, green: 180 / 255, blue: 107 / 255)
        )
    }

    public static var bitcoinBlue: Color {
        Color(
            light: Color(red: 45 / 255, green: 156 / 255, blue: 219 / 255),
            dark: Color(red: 60 / 255, green: 163 / 255, blue: 222 / 255)
        )
    }

    public static var bitcoinPurple: Color {
        Color(
            light: Color(red: 187 / 255, green: 107 / 255, blue: 217 / 255),
            dark: Color(red: 192 / 255, green: 117 / 255, blue: 220 / 255)
        )
    }

    public static var bitcoinWhite: Color {
        Color(red: 1, green: 1, blue: 1)
    }

    public static var bitcoinNeutral1: Color {
        Color(
            light: Color(red: 248 / 255, green: 248 / 255, blue: 248 / 255),
            dark: Color(red: 26 / 255, green: 26 / 255, blue: 26 / 255)
        )
    }

    public static var bitcoinNeutral2: Color {
        Color(
            light: Color(red: 244 / 255, green: 244 / 255, blue: 244 / 255),
            dark: Color(red: 45 / 255, green: 45 / 255, blue: 45 / 255)
        )
    }

    public static var bitcoinNeutral3: Color {
        Color(
            light: Color(red: 237 / 255, green: 237 / 255, blue: 237 / 255),
            dark: Color(red: 68 / 255, green: 68 / 255, blue: 68 / 255)
        )
    }

    public static var bitcoinNeutral4: Color {
        Color(
            light: Color(red: 222 / 255, green: 222 / 255, blue: 222 / 255),
            dark: Color(red: 92 / 255, green: 92 / 255, blue: 92 / 255)
        )
    }

    public static var bitcoinNeutral5: Color {
        Color(
            light: Color(red: 187 / 255, green: 187 / 255, blue: 187 / 255),
            dark: Color(red: 120 / 255, green: 120 / 255, blue: 120 / 255)
        )
    }

    public static var bitcoinNeutral6: Color {
        Color(
            light: Color(red: 153 / 255, green: 153 / 255, blue: 153 / 255),
            dark: Color(red: 148 / 255, green: 148 / 255, blue: 148 / 255)
        )
    }

    public static var bitcoinNeutral7: Color {
        Color(
            light: Color(red: 119 / 255, green: 119 / 255, blue: 119 / 255),
            dark: Color(red: 176 / 255, green: 176 / 255, blue: 176 / 255)
        )
    }

    public static var bitcoinNeutral8: Color {
        Color(
            light: Color(red: 64 / 255, green: 64 / 255, blue: 64 / 255),
            dark: Color(red: 204 / 255, green: 204 / 255, blue: 204 / 255)
        )
    }

    public static var bitcoinBlack: Color {
        Color(red: 0, green: 0, blue: 0)
    }

    public static var bitcoinMyMattress: Color {
        Color(red: 28 / 255, green: 55 / 255, blue: 107 / 255)
    }

}

#if canImport(UIKit)
    import UIKit

    extension Color {
        fileprivate init(light: Color, dark: Color) {
            self.init(
                UIColor { traitCollection in
                    traitCollection.userInterfaceStyle == .dark ? UIColor(dark) : UIColor(light)
                }
            )
        }
    }

    extension UIColor {
        public static var bitcoinOrange: UIColor { UIColor(Color.bitcoinOrange) }
        public static var bitcoinRed: UIColor { UIColor(Color.bitcoinRed) }
        public static var bitcoinGreen: UIColor { UIColor(Color.bitcoinGreen) }
        public static var bitcoinBlue: UIColor { UIColor(Color.bitcoinBlue) }
        public static var bitcoinPurple: UIColor { UIColor(Color.bitcoinPurple) }
        public static var bitcoinWhite: UIColor { UIColor(Color.bitcoinWhite) }
        public static var bitcoinNeutral1: UIColor { UIColor(Color.bitcoinNeutral1) }
        public static var bitcoinNeutral2: UIColor { UIColor(Color.bitcoinNeutral2) }
        public static var bitcoinNeutral3: UIColor { UIColor(Color.bitcoinNeutral3) }
        public static var bitcoinNeutral4: UIColor { UIColor(Color.bitcoinNeutral4) }
        public static var bitcoinNeutral5: UIColor { UIColor(Color.bitcoinNeutral5) }
        public static var bitcoinNeutral6: UIColor { UIColor(Color.bitcoinNeutral6) }
        public static var bitcoinNeutral7: UIColor { UIColor(Color.bitcoinNeutral7) }
        public static var bitcoinNeutral8: UIColor { UIColor(Color.bitcoinNeutral8) }
        public static var bitcoinBlack: UIColor { UIColor(Color.bitcoinBlack) }
        public static var bitcoinMyMattress: UIColor { UIColor(Color.bitcoinMyMattress) }
    }

#elseif canImport(AppKit)
    import AppKit

    extension Color {
        fileprivate init(light: Color, dark: Color) {
            self.init(
                NSColor(
                    name: nil,
                    dynamicProvider: { appearance in
                        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                            ? NSColor(dark) : NSColor(light)
                    }
                )
            )
        }
    }
#endif

struct ColorView: View {
    let color: Color
    let colorLabel: String

    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
            Text(colorLabel)
                .font(.caption)
                .foregroundColor(.bitcoinNeutral5)
                .multilineTextAlignment(.center)
        }
    }
}

struct ColorsView: View {
    var body: some View {
        ZStack {
            Color.bitcoinNeutral1

            VStack {
                Text("Colors")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())

                Spacer()

                HStack {
                    ColorView(color: .bitcoinWhite, colorLabel: "White")
                    ColorView(color: .bitcoinNeutral1, colorLabel: "Neutral1")
                    ColorView(color: .bitcoinNeutral2, colorLabel: "Neutral2")
                    ColorView(color: .bitcoinNeutral3, colorLabel: "Neutral3")
                    ColorView(color: .bitcoinNeutral4, colorLabel: "Neutral4")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                HStack {
                    ColorView(color: .bitcoinNeutral5, colorLabel: "Neutral5")
                    ColorView(color: .bitcoinNeutral6, colorLabel: "Neutral6")
                    ColorView(color: .bitcoinNeutral7, colorLabel: "Neutral7")
                    ColorView(color: .bitcoinNeutral8, colorLabel: "Neutral8")
                    ColorView(color: .bitcoinBlack, colorLabel: "Black")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                HStack {
                    ColorView(color: .bitcoinOrange, colorLabel: "Orange")
                    ColorView(color: .bitcoinRed, colorLabel: "Red")
                    ColorView(color: .bitcoinGreen, colorLabel: "Green")
                    ColorView(color: .bitcoinBlue, colorLabel: "Blue")
                    ColorView(color: .bitcoinPurple, colorLabel: "Purple")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())

                Spacer()
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}

#Preview {
    ColorsView()
}
