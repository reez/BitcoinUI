//
//  Utilities.swift
//
//
//  Created by Matthew Ramsden on 8/24/23.
//

import Foundation
import SwiftUI

extension CGFloat {

    // Choose horizontal spacing per Figma
    static func wallet_grid_horizontal_10() -> CGFloat {
        return CGFloat(1) * 10
    }

    // Choose vertical spacing per Figma
    static func wallet_grid_vertical_20() -> CGFloat {
        return CGFloat(1) * 20
    }

}

extension View {
    func applyFidgetEffect(viewState: Binding<CGSize>) -> some View {
        self
            .offset(x: -viewState.wrappedValue.width, y: -viewState.wrappedValue.height)
            .rotation3DEffect(
                .degrees(viewState.wrappedValue.width),
                axis: (x: 0, y: 1, z: 0)
            )
    }
}
