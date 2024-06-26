//
//  Colors.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

extension UIColor {

    public static var bitcoinOrange: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 248 / 255,
                    green: 155 / 255,
                    blue: 42 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 247 / 255,
                    green: 147 / 255,
                    blue: 26 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinRed: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 236 / 255,
                    green: 99 / 255,
                    blue: 99 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 235 / 255,
                    green: 87 / 255,
                    blue: 87 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinGreen: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 54 / 255,
                    green: 180 / 255,
                    blue: 107 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 39 / 255,
                    green: 174 / 255,
                    blue: 96 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinBlue: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 60 / 255,
                    green: 163 / 255,
                    blue: 222 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 45 / 255,
                    green: 156 / 255,
                    blue: 219 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinPurple: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 192 / 255,
                    green: 117 / 255,
                    blue: 220 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 187 / 255,
                    green: 107 / 255,
                    blue: 217 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinWhite: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
    }

    public static var bitcoinNeutral1: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 26 / 255,
                    green: 26 / 255,
                    blue: 26 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 248 / 255,
                    green: 248 / 255,
                    blue: 248 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral2: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 45 / 255,
                    green: 45 / 255,
                    blue: 45 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 244 / 255,
                    green: 244 / 255,
                    blue: 244 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral3: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 68 / 255,
                    green: 68 / 255,
                    blue: 68 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 237 / 255,
                    green: 237 / 255,
                    blue: 237 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral4: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 92 / 255,
                    green: 92 / 255,
                    blue: 92 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 222 / 255,
                    green: 222 / 255,
                    blue: 222 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral5: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 120 / 255,
                    green: 120 / 255,
                    blue: 120 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 187 / 255,
                    green: 187 / 255,
                    blue: 187 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral6: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 148 / 255,
                    green: 148 / 255,
                    blue: 148 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 153 / 255,
                    green: 153 / 255,
                    blue: 153 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral7: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 176 / 255,
                    green: 176 / 255,
                    blue: 176 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 119 / 255,
                    green: 119 / 255,
                    blue: 119 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinNeutral8: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 204 / 255,
                    green: 204 / 255,
                    blue: 204 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 64 / 255,
                    green: 64 / 255,
                    blue: 64 / 255,
                    alpha: 1
                )
            }
        }
    }

    public static var bitcoinBlack: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            } else {
                return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
    }

}

extension Color {
    public static var bitcoinWhite: Color {
        return Color(.bitcoinWhite)
    }
    public static var bitcoinNeutral1: Color {
        return Color(.bitcoinNeutral1)
    }
    public static var bitcoinNeutral2: Color {
        return Color(.bitcoinNeutral2)
    }
    public static var bitcoinNeutral3: Color {
        return Color(.bitcoinNeutral3)
    }
    public static var bitcoinNeutral4: Color {
        return Color(.bitcoinNeutral4)
    }
    public static var bitcoinNeutral5: Color {
        return Color(.bitcoinNeutral5)
    }
    public static var bitcoinNeutral6: Color {
        return Color(.bitcoinNeutral6)
    }
    public static var bitcoinNeutral7: Color {
        return Color(.bitcoinNeutral7)
    }
    public static var bitcoinNeutral8: Color {
        return Color(.bitcoinNeutral8)
    }
    public static var bitcoinBlack: Color {
        return Color(.bitcoinBlack)
    }
    public static var bitcoinOrange: Color {
        return Color(.bitcoinOrange)
    }
    public static var bitcoinRed: Color {
        return Color(.bitcoinRed)
    }
    public static var bitcoinGreen: Color {
        return Color(.bitcoinGreen)
    }
    public static var bitcoinBlue: Color {
        return Color(.bitcoinBlue)
    }
    public static var bitcoinPurple: Color {
        return Color(.bitcoinPurple)
    }
}

/// Extend UIColor to add MyMattress specific colors

extension UIColor {

    public static var bitcoinMyMattress: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 28 / 255,
                    green: 55 / 255,
                    blue: 107 / 255,
                    alpha: 1
                )
            } else {
                return UIColor(
                    red: 28 / 255,
                    green: 55 / 255,
                    blue: 107 / 255,
                    alpha: 1
                )
            }
        }
    }
}

extension Color {
    public static var bitcoinMyMattress: Color {
        return Color(.bitcoinMyMattress)
    }
}

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
            Color(UIColor.systemBackground)

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
