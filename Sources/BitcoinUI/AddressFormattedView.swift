//
//  AddressFormattedView.swift
//
//
//  Created by Matthew Ramsden on 6/21/24.
//

import SwiftUI

public struct AddressFormattedView: View {
    public let address: String
    public let columns: Int
    public let spacing: CGFloat
    public let gridItemSize: CGFloat
    @ScaledMetric(relativeTo: .body) private var gridScale: CGFloat = 1
    @ScaledMetric(relativeTo: .body) private var fontSize: CGFloat = 20

    public init(
        address: String,
        columns: Int = 3,
        spacing: CGFloat = 10,
        gridItemSize: CGFloat = 80
    ) {
        self.address = address
        self.columns = columns
        self.spacing = spacing
        self.gridItemSize = gridItemSize
    }

    public var body: some View {
        let scaledGridItemSize = gridItemSize * gridScale
        let scaledSpacing = spacing * gridScale
        let chunks = address.chunked(into: 4)
        let accessibleAddress = chunks.joined(separator: " ")
        LazyVGrid(
            columns: Array(
                repeating: GridItem(
                    .fixed(scaledGridItemSize),
                    spacing: scaledSpacing
                ),
                count: columns
            ),
            spacing: scaledSpacing
        ) {
            ForEach(chunks.indices, id: \.self) { index in
                Text(chunks[index])
                    .font(.system(size: fontSize, weight: .medium, design: .monospaced))
                    .foregroundStyle(index % 2 == 0 ? .primary : .secondary)
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Bitcoin address"))
        .accessibilityValue(Text(accessibleAddress))
    }
}

struct AddressFormattedView_Previews: PreviewProvider {
    static var previews: some View {
        AddressFormattedView(
            address:
                "tb1pw6y0vtmsn46epvz0j8ddc46ketmp28t82p22hcrrkch3a0jhu40qe267dl"
        )
    }
}

#Preview {
    AddressFormattedView(
        address: "tb1pw6y0vtmsn46epvz0j8ddc46ketmp28t82p22hcrrkch3a0jhu40qe267dl"
    )
}
