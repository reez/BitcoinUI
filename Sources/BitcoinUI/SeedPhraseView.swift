//
//  SeedPhraseView.swift
//
//
//  Created by Matthew Ramsden on 6/14/24.
//

import SwiftUI

public struct SeedPhraseView: View {
    public var words: [String]
    public var preferredWordsPerRow: Int
    public var usePaging: Bool
    public var wordsPerPage: Int
    @State private var currentPage = 0
    @ScaledMetric(relativeTo: .body) private var capsuleScale: CGFloat = 1
    @ScaledMetric(relativeTo: .body) private var horizontalPadding: CGFloat = 20

    public init(
        words: [String],
        preferredWordsPerRow: Int,
        usePaging: Bool = false,
        wordsPerPage: Int = 6
    ) {
        self.words = words
        self.preferredWordsPerRow = max(1, preferredWordsPerRow)
        self.usePaging = usePaging
        self.wordsPerPage = max(1, wordsPerPage)
    }

    public var body: some View {
        let capsuleWidth = capsuleWidth(for: preferredWordsPerRow) * capsuleScale

        if usePaging {
            let pages = words.chunked(into: wordsPerPage)

            TabView(selection: $currentPage) {
                ForEach(Array(pages.enumerated()), id: \.offset) { pageIndex, pageWords in
                    WordGrid(
                        words: pageWords,
                        startIndex: pageIndex * wordsPerPage,
                        preferredWordsPerRow: preferredWordsPerRow,
                        capsuleWidth: capsuleWidth
                    )
                    .padding(.horizontal, horizontalPadding)
                    .tag(pageIndex)
                }
            }
            #if os(iOS)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            #endif
        } else {
            WordGrid(
                words: words,
                startIndex: 0,
                preferredWordsPerRow: preferredWordsPerRow,
                capsuleWidth: capsuleWidth
            )
            .padding(.horizontal, horizontalPadding)
        }
    }

    private func capsuleWidth(for preferredWordsPerRow: Int) -> CGFloat {
        switch preferredWordsPerRow {
        case 2:
            return 120
        case 3:
            return 100
        case 4:
            return 80
        default:
            return 100
        }
    }
}

private struct WordGrid: View {
    private let rows: [[WordEntry]]
    private let capsuleWidth: CGFloat
    @ScaledMetric(relativeTo: .body) private var rowSpacing: CGFloat = 8
    @ScaledMetric(relativeTo: .body) private var columnSpacing: CGFloat = 8

    init(words: [String], startIndex: Int, preferredWordsPerRow: Int, capsuleWidth: CGFloat) {
        let entries = words.enumerated().map { offset, word in
            WordEntry(index: startIndex + offset, word: word)
        }
        self.rows = entries.chunked(into: preferredWordsPerRow)
        self.capsuleWidth = capsuleWidth
    }

    var body: some View {
        VStack(alignment: .leading, spacing: rowSpacing) {
            ForEach(rows.indices, id: \.self) { rowIndex in
                HStack(spacing: columnSpacing) {
                    ForEach(rows[rowIndex]) { entry in
                        WordCapsule(
                            index: entry.index,
                            word: entry.word,
                            capsuleWidth: capsuleWidth
                        )
                    }
                }
            }
        }
    }

    private struct WordEntry: Identifiable {
        let index: Int
        let word: String
        var id: Int { index }
    }
}

struct WordCapsule: View {
    let index: Int
    let word: String
    let capsuleWidth: CGFloat
    @ScaledMetric(relativeTo: .body) private var indexFontSize: CGFloat = 14
    @ScaledMetric(relativeTo: .body) private var wordFontSize: CGFloat = 16
    @ScaledMetric(relativeTo: .body) private var dividerHeight: CGFloat = 20
    @ScaledMetric(relativeTo: .body) private var indexMinWidth: CGFloat = 20
    @ScaledMetric(relativeTo: .body) private var horizontalPadding: CGFloat = 10
    @ScaledMetric(relativeTo: .body) private var verticalPadding: CGFloat = 5

    var body: some View {
        HStack(alignment: .center) {
            Text("\(index + 1)")
                .font(.system(size: indexFontSize))
                .foregroundStyle(.secondary)
                .frame(minWidth: indexMinWidth, alignment: .trailing)
            Divider()
                .frame(height: dividerHeight)
                .background(.secondary.opacity(0.2))
            Text(word)
                .font(.system(size: wordFontSize, weight: .medium))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, horizontalPadding)
        .padding(.vertical, verticalPadding)
        .frame(width: capsuleWidth)
        .background(Capsule().fill(.secondary.opacity(0.2)))
        .foregroundStyle(.primary)
        .lineLimit(1)
        .minimumScaleFactor(0.5)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Word \(index + 1)"))
        .accessibilityValue(Text(word))
    }
}

struct SeedPhraseView_Previews: PreviewProvider {
    static var previews: some View {
        SeedPhraseView(
            words: [
                "paddle", "train", "boil", "catch", "trim", "plastic",
                "wolf", "hazard", "govern", "oval", "drama", "gun",
                "swim", "accuse", "degree", "teach", "game", "penalty",
                "social", "hard", "crush", "media", "radar", "click",
            ],
            preferredWordsPerRow: 2,
            usePaging: true,
            wordsPerPage: 4
        )
    }
}

#Preview {
    SeedPhraseView(
        words: [
            "paddle", "train", "boil", "catch", "trim", "plastic",
            "wolf", "hazard", "govern", "oval", "drama", "gun",
            "swim", "accuse", "degree", "teach", "game", "penalty",
            "social", "hard", "crush", "media", "radar", "click",
        ],
        preferredWordsPerRow: 2,
        usePaging: true,
        wordsPerPage: 4
    )
}
