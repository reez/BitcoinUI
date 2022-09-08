//
//  ButtonStyles.swift
//  
//
//  Created by Daniel Nordh on 9/8/22.
//

import Foundation
import SwiftUI

/// A `ButtonStyle` according to the Filled type in the Bitcoin Wallet UI Kit
///
/// ```swift
/// Button("Label") {
///     print("Button pressed!")
/// }
///.buttonStyle(BitcoinFilled())
/// ```
/// - Parameter width: The width of the button (optional, default is 315.0)
/// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
/// - Parameter tintColor: The background color of the button (optional, default is .bitcoinOrange)
/// - Parameter textColor: The text color of the button (optional, default is .bitcoinWhite)
/// - Parameter disabledColor: The disabled background color of the button (optional, default is .bitcoinNeutral4)
struct BitcoinFilled: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    var width = 315.0
    var cornerRadius = 5.0
    var tintColor = Color.bitcoinOrange
    var textColor = Color.bitcoinWhite
    var disabledColor = Color.bitcoinNeutral4
    
    func makeBody(configuration: Configuration) -> some View {
        let stateBackgroundColor = stateBackgroundColor(configuration: configuration)
        configuration.label
            .padding()
            .frame(width: width, height: 46)
            .background(stateBackgroundColor.opacity(0.8).cornerRadius(cornerRadius))
            .foregroundColor(textColor)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
    func stateBackgroundColor(configuration: Configuration) -> Color {
        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledColor
    }
}

/// A `ButtonStyle` according to the Outline type in the Bitcoin Wallet UI Kit
///
/// ```swift
/// Button("Label") {
///     print("Button pressed!")
/// }
///.buttonStyle(BitcoinOutlined())
/// ```
/// - Parameter width: The width of the button (optional, default is 315.0)
/// - Parameter cornerRadius: The corner radius of the button (optional, default is 5.0)
/// - Parameter tintColor: The border color of the button (optional, default is .bitcoinOrange)
/// - Parameter disabledColor: The disabled background color of the button (optional, default is .bitcoinNeutral4)
struct BitcoinOutlined: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    var width = 315.0
    var cornerRadius = 5.0
    var tintColor = Color.bitcoinOrange
    var disabledColor = Color.bitcoinNeutral4
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: width, height: 46)
            .foregroundColor(stateForegroundColor())
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(stateBackgroundColor(configuration: configuration), lineWidth: 1.5)
                )
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
    func stateBackgroundColor(configuration: Configuration) -> Color {
        return isEnabled ? configuration.isPressed ? tintColor.opacity(0.8) : tintColor : disabledColor
    }
    func stateForegroundColor() -> Color {
        return isEnabled ? tintColor : disabledColor
    }
}
