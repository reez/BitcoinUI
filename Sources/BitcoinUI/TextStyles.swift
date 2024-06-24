//
//  TextStyles.swift
//
//
//  Created by Daniel Nordh on 16/09/2022.
//

import Foundation
import SwiftUI

extension Text {
    public func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}

public struct BitcoinTitle1: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 36, weight: .semibold))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinTitle2: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 28, weight: .semibold))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinTitle3: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 24, weight: .semibold))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinTitle4: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 21, weight: .semibold))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinTitle5: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinBody1: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 24, weight: .regular))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinBody2: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 21, weight: .regular))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinBody3: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinBody4: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 15, weight: .regular))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

public struct BitcoinBody5: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    public init() {}
    public func body(content: Content) -> some View {
        content
            .font(.system(size: 13, weight: .regular))
            .foregroundColor(colorScheme == .dark ? .bitcoinWhite : .bitcoinBlack)
    }
}

struct TextStylesView: View {
    var body: some View {

        ZStack {
            Color(UIColor.systemBackground)

            VStack {

                Text("Text Styles")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())
                    .padding(.top, .wallet_grid_vertical_20())

                Spacer()

                Text("Title")
                    .textStyle(BitcoinTitle1())
                    .padding()

                Text("Body")
                    .textStyle(BitcoinBody1())
                    .padding()

                Text("Body")
                    .textStyle(BitcoinBody2())
                    .padding()

                Text("Body")
                    .textStyle(BitcoinBody3())
                    .padding()

                Text("Body")
                    .textStyle(BitcoinBody4())
                    .padding()

                Text("Body")
                    .textStyle(BitcoinBody5())
                    .padding()

                Spacer()

            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())

        }
        .edgesIgnoringSafeArea(.all)

    }
}

struct TextStylesView_Previews: PreviewProvider {
    static var previews: some View {
        TextStylesView()
    }
}

#Preview {
    TextStylesView()
}
