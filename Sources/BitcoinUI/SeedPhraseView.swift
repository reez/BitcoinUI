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

    public init(
        words: [String],
        preferredWordsPerRow: Int,
        usePaging: Bool = false,
        wordsPerPage: Int = 6
    ) {
        self.words = words
        self.preferredWordsPerRow = preferredWordsPerRow
        self.usePaging = usePaging
        self.wordsPerPage = wordsPerPage
    }

    public var body: some View {
        let capsuleWidth: CGFloat = {
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
        }()

        if usePaging {
            let chunks = words.chunked(into: wordsPerPage)

            TabView(selection: $currentPage) {
                ForEach(0..<chunks.count, id: \.self) { pageIndex in
                    HStack(spacing: 16) {
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(0..<(chunks[pageIndex].count / 2), id: \.self) { index in
                                let wordIndex = pageIndex * wordsPerPage + index
                                WordCapsule(
                                    index: wordIndex,
                                    word: chunks[pageIndex][index],
                                    capsuleWidth: capsuleWidth
                                )
                            }
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(
                                (chunks[pageIndex].count / 2)..<chunks[pageIndex].count,
                                id: \.self
                            ) { index in
                                let wordIndex = pageIndex * wordsPerPage + index
                                WordCapsule(
                                    index: wordIndex,
                                    word: chunks[pageIndex][index],
                                    capsuleWidth: capsuleWidth
                                )
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .tag(pageIndex)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        } else {
            VStack(alignment: .leading, spacing: 8) {
                ForEach(0..<words.count, id: \.self) { index in
                    if index % preferredWordsPerRow == 0 {
                        HStack(spacing: 8) {
                            ForEach(index..<(index + preferredWordsPerRow), id: \.self) {
                                innerIndex in
                                if innerIndex < words.count {
                                    WordCapsule(
                                        index: innerIndex,
                                        word: words[innerIndex],
                                        capsuleWidth: capsuleWidth
                                    )
                                }
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct WordCapsule: View {
    let index: Int
    let word: String
    let capsuleWidth: CGFloat

    var body: some View {
        HStack(alignment: .center) {
            Text("\(index + 1)")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
                .frame(minWidth: 20, alignment: .trailing)
            Divider()
                .frame(height: 20)
                .background(Color.secondary.opacity(0.2))
            Text(word)
                .font(.system(size: 16, weight: .medium))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .frame(width: capsuleWidth)
        .background(Capsule().fill(Color.secondary.opacity(0.2)))
        .foregroundColor(.primary)
        .lineLimit(1)
        .minimumScaleFactor(0.5)
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
