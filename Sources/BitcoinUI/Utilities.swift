//
//  Utilities.swift
//
//
//  Created by Matthew Ramsden on 8/24/23.
//

import Foundation
import SwiftUI

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

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

extension String {
    func chunked(into size: Int) -> [String] {
        return stride(from: 0, to: self.count, by: size).map {
            let start = self.index(self.startIndex, offsetBy: $0)
            let end = self.index(start, offsetBy: size, limitedBy: self.endIndex) ?? self.endIndex
            return String(self[start..<end])
        }
    }
}

extension View {
    @ViewBuilder
    func applyFidgetEffect(
        viewState: Binding<CGSize>,
        reduceMotion: Bool = false
    ) -> some View {
        if reduceMotion {
            self
        } else {
            self
                .offset(x: -viewState.wrappedValue.width, y: -viewState.wrappedValue.height)
                .rotation3DEffect(
                    .degrees(viewState.wrappedValue.width),
                    axis: (x: 0, y: 1, z: 0)
                )
        }
    }
}
