//
//  ButtonStyles.swift
//  
//
//  Created by Daniel Nordh on 9/8/22.
//

import Foundation
import SwiftUI

public struct NeumorphicButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) private var colorScheme

    public struct Appearance {
        public var cornerRadius: CGFloat = 12
        public var lightColor: Color = .hex("E8EEF6")
        public var darkColor: Color = .hex("1E212B")

        public init() { }
    }

    public let appearance: Appearance

    private var buttonColor: Color {
        switch colorScheme {
        case .light: return appearance.lightColor
        case .dark: return appearance.darkColor
        @unknown default: return appearance.lightColor
        }
    }

    private var topShadowColor: Color {
        switch colorScheme {
        case .light: return .white
        case .dark: return Color.white.opacity(0.52)
        @unknown default: return .white
        }
    }

    private var bottomShadowColor: Color {
        switch colorScheme {
        case .light: return Color.black.opacity(0.8)
        case .dark: return Color.black.opacity(0.48)
        @unknown default: return Color.black.opacity(0.8)
        }
    }

    private func borderColor(_ configuration: Self.Configuration) -> Color {
        switch colorScheme {
        case .light: return Color.white.opacity(configuration.isPressed ? 0.24 : 0.1)
        case .dark: return Color.white.opacity(configuration.isPressed ? 0.07 : 0.05)
        @unknown default: return Color.white.opacity(configuration.isPressed ? 0.24 : 0.1)
        }
    }

    private func overlayColor(_ configuration: Self.Configuration) -> Color {
        switch colorScheme {
        case .light:
            return configuration.isPressed ? Color.white.opacity(0.001) : Color.white.opacity(0.14)
        case .dark:
            return configuration.isPressed ? Color.white.opacity(0.001) : Color.white.opacity(0.01)
        @unknown default:
            return configuration.isPressed ? Color.white.opacity(0.001) : Color.white.opacity(0.14)
        }
    }

    private func radius(_ configuration: Self.Configuration) -> CGFloat {
        configuration.isPressed ? 6 : 13
    }

    private func shadowView(_ configuration: Self.Configuration) -> some View {
        let shadows = RoundedRectangle(cornerRadius: appearance.cornerRadius, style: .continuous)
            .foregroundColor(.white)
            .shadow(
                color: topShadowColor,
                radius: radius(configuration),
                x: configuration.isPressed ? -2 : -6,
                y: configuration.isPressed ? -4 : -8
        )
            .shadow(
                color: bottomShadowColor,
                radius: radius(configuration),
                x: configuration.isPressed ? 2 : 6,
                y: configuration.isPressed ? 4 : 8
        )
            .blendMode(.overlay)
            .padding(6)

        switch colorScheme {
        case .light: return AnyView(ZStack(content: {
            shadows
            shadows
        }))
        default: return AnyView(shadows)
        }
    }

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                ZStack {
                    shadowView(configuration)

                    RoundedRectangle(cornerRadius: appearance.cornerRadius, style: .continuous)
                        .foregroundColor(buttonColor)
                        .overlay(
                            RoundedRectangle(cornerRadius: appearance.cornerRadius, style: .continuous)
                                .foregroundColor(overlayColor(configuration))
                                .blendMode(.overlay)
                    )
                        .overlay(
                            RoundedRectangle(cornerRadius: appearance.cornerRadius, style: .continuous)
                                .stroke(borderColor(configuration))
                                .blendMode(.overlay)
                    )
                }

        )
            .scaleEffect(configuration.isPressed ? 0.99 : 1)
            .animation(
                .interactiveSpring(
                    response: configuration.isPressed ? 0.24 : 0.3,
                    dampingFraction: 0.4,
                    blendDuration: 0.6
                ),
                value: configuration.isPressed
        )
    }

    public init(appearance: Appearance = Appearance()) {
        self.appearance = appearance
    }

}

public extension Color {

    static func hex(_ hex: String) -> Self {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = .init(utf16Offset: 0, in: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        return Self.init(
            red: Double(r) / 0xff,
            green: Double(g) / 0xff,
            blue: Double(b) / 0xff,
            opacity: 1
        )
    }

}

//
///// A `ButtonStyle` according to the Filled type in the Bitcoin Wallet UI Kit
/////
///// ```swift
///// Button("Label") {
/////     print("Button pressed!")
///// }
/////.buttonStyle(BitcoinFilled())
///// ```
///// - Parameter width: The width of the button (optional, default is 315.0)
///// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
///// - Parameter tintColor: The background color of the button (optional, default is .bitcoinOrange)
///// - Parameter textColor: The text color of the button (optional, default is .bitcoinWhite)
///// - Parameter disabledColor: The disabled background color of the button (optional, default is .bitcoinNeutral4)
//public struct BitcoinFilled: ButtonStyle {
//    @Environment(\.isEnabled) var isEnabled
//    let width = 315.0
//    let cornerRadius = 5.0
//    let tintColor = Color.bitcoinOrange
//    let textColor = Color.bitcoinWhite
//    let disabledColor = Color.bitcoinNeutral2
//    let disabledTextColor = Color.bitcoinNeutral5
//
//    public init(width: CGFloat?) {
//        self.width = width ?? 315.0
//        self.cornerRadius = 5.0
//        self.tintColor = Color.bitcoinOrange
//        self.textColor = Color.bitcoinWhite
//        self.disabledColor = Color.bitcoinNeutral2
//        self.disabledTextColor = Color.bitcoinNeutral5
//    }
//
//    public func makeBody(configuration: Configuration) -> some View {
//        let stateBackgroundColor = stateBackgroundColor(configuration: configuration)
//        configuration.label
//            .padding()
//            .frame(width: width, height: 46)
//            .background(stateBackgroundColor.opacity(0.8).cornerRadius(cornerRadius))
//            .foregroundColor(stateTextColor())
//            .scaleEffect(configuration.isPressed ? 0.95 : 1)
//            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
//    }
//    func stateBackgroundColor(configuration: Configuration) -> Color {
//        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledColor
//    }
//    func stateTextColor() -> Color {
//        return isEnabled ? textColor : disabledTextColor
//    }
//}
//
///// A `ButtonStyle` according to the Outline type in the Bitcoin Wallet UI Kit
/////
///// ```swift
///// Button("Label") {
/////     print("Button pressed!")
///// }
/////.buttonStyle(BitcoinOutlined())
///// ```
///// - Parameter width: The width of the button (optional, default is 315.0)
///// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
///// - Parameter tintColor: The border color of the button (optional, default is .bitcoinOrange)
///// - Parameter disabledColor: The disabled background color of the button (optional, default is .bitcoinNeutral4)
//public struct BitcoinOutlined: ButtonStyle {
//    @Environment(\.isEnabled) var isEnabled
//    @Environment(\.colorScheme) var colorScheme
//    var width = 315.0
//    var cornerRadius = 5.0
//    var tintColor = Color.bitcoinOrange
//    var disabledColor = Color.bitcoinNeutral4
//
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .padding()
//            .frame(width: width, height: 46)
//            .background(stateBackgroundColor().cornerRadius(cornerRadius))
//            .foregroundColor(stateTextColor())
//            .overlay(
//                RoundedRectangle(cornerRadius: cornerRadius)
//                    .stroke(stateBorderColor(configuration: configuration), lineWidth: 1.5)
//                )
//            .scaleEffect(configuration.isPressed ? 0.95 : 1)
//            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
//    }
//    func stateBackgroundColor() -> Color {
//        return colorScheme == .dark ? .bitcoinBlack : .bitcoinWhite
//    }
//    func stateBorderColor(configuration: Configuration) -> Color {
//        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledColor
//    }
//    func stateTextColor() -> Color {
//        return isEnabled ? tintColor : disabledColor
//    }
//}
