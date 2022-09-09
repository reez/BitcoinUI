//
//  ButtonStyles.swift
//  
//
//  Created by Daniel Nordh on 9/8/22.
//

import Foundation
import SwiftUI

public let defaultButtonWidth = 315.0
public let defaultButtonHeight = 48.0
public let defaultCornerRadius = 5.0
public let defaultTintColor = Color.bitcoinOrange
public let defaultTextColor = Color.bitcoinWhite
public let defaultDisabledFillColor = Color.bitcoinNeutral2
public let defaultDisabledTextColor = Color.bitcoinNeutral5
public let defaultDisabledOutlineColor = Color.bitcoinNeutral4

/// A `ButtonStyle` corresponding to the Filled type in the Bitcoin Wallet UI Kit
///
/// ```swift
/// Button("Label") {
///     print("Button pressed!")
/// }
///.buttonStyle(BitcoinFilled())
/// ```
/// - Parameter width: The width of the button (optional, default is 315.0)
/// - Parameter height: The width of the button (optional, default is 48.0)
/// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
/// - Parameter tintColor: The background color of the button (optional, default is .bitcoinOrange)
/// - Parameter textColor: The text color of the button (optional, default is .bitcoinWhite)
/// - Parameter disabledFillColor: The disabled background color of the button (optional, default is .bitcoinNeutral2)
/// - Parameter disabledTextColor: The disabled text color of the button (optional, default is .bitcoinNeutral5)
///
public struct BitcoinFilled: ButtonStyle {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnabled
    
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let tintColor: Color
    let textColor: Color
    let disabledFillColor: Color
    let disabledTextColor: Color
    
    public init(width: CGFloat = defaultButtonWidth, height: CGFloat = defaultButtonHeight, cornerRadius: CGFloat = defaultCornerRadius, tintColor: Color = defaultTintColor, textColor: Color = defaultTextColor, disabledFillColor: Color = defaultDisabledFillColor, disabledTextColor: Color = defaultDisabledTextColor) {
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.tintColor = tintColor
        self.textColor = textColor
        self.disabledFillColor = disabledFillColor
        self.disabledTextColor = disabledTextColor
    }

    public func makeBody(configuration: Configuration) -> some View {
        let stateBackgroundColor = stateBackgroundColor(configuration: configuration)
        configuration.label
            .padding()
            .frame(width: width, height: height)
            .background(stateBackgroundColor.opacity(0.8).cornerRadius(cornerRadius))
            .foregroundColor(stateTextColor())
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }

    private func stateBackgroundColor(configuration: Configuration) -> Color {
        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledFillColor
    }
    
    private func stateTextColor() -> Color {
        return isEnabled ? textColor : disabledTextColor
    }
}

/// A `ButtonStyle` corresponding to the Outline type in the Bitcoin Wallet UI Kit
///
/// ```swift
/// Button("Label") {
///     print("Button pressed!")
/// }
///.buttonStyle(BitcoinOutlined())
/// ```
/// - Parameter width: The width of the button (optional, default is 315.0)
/// - Parameter height: The width of the button (optional, default is 48.0)
/// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
/// - Parameter tintColor: The border color of the button (optional, default is .bitcoinOrange)
/// - Parameter disabledColor: The disabled background color of the button (optional, default is .bitcoinNeutral4)
///
public struct BitcoinOutlined: ButtonStyle {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnabled
    
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let tintColor: Color
    let disabledColor: Color
    
    public init(width: CGFloat = defaultButtonWidth, height: CGFloat = defaultButtonHeight, cornerRadius: CGFloat = defaultCornerRadius, tintColor: Color = defaultTintColor, disabledColor: Color = defaultDisabledOutlineColor) {
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.tintColor = tintColor
        self.disabledColor = disabledColor
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: width, height: 46)
            .background(stateBackgroundColor().cornerRadius(cornerRadius))
            .foregroundColor(stateTextColor())
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(stateBorderColor(configuration: configuration), lineWidth: 1.5)
                )
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
    private func stateBackgroundColor() -> Color {
        return colorScheme == .dark ? .bitcoinBlack : .bitcoinWhite
    }
    private func stateBorderColor(configuration: Configuration) -> Color {
        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledColor
    }
    private func stateTextColor() -> Color {
        return isEnabled ? tintColor : disabledColor
    }
}
