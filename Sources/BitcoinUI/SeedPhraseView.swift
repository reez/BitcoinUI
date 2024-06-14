//
//  SeedPhraseView.swift
//
//
//  Created by Matthew Ramsden on 6/14/24.
//

import SwiftUI

public struct SeedPhraseView: View {
    public var words: [String]
    public var preferredWordsPerRow: Int = 3

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

        VStack(alignment: .leading, spacing: 8) {
            ForEach(0..<words.count, id: \.self) { index in
                if index % preferredWordsPerRow == 0 {
                    HStack(spacing: 8) {
                        ForEach(index..<(index + preferredWordsPerRow), id: \.self) { innerIndex in
                            if innerIndex < words.count {
                                HStack(alignment: .center) {
                                    Text("\(innerIndex + 1)")
                                        .font(
                                            .system(
                                                size: 14
                                            )
                                        )
                                        .foregroundColor(.secondary)
                                        .frame(minWidth: 20, alignment: .leading)
                                    Divider()
                                        .frame(height: 20)
                                        .background(Color.secondary.opacity(0.2))
                                    Text(words[innerIndex])
                                        .font(
                                            .system(
                                                size: 16,
                                                weight: .medium
                                            )
                                        )
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
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        
    }
}

struct SeedPhraseView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SeedPhraseView(words: [
                "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew",
                "kiwi",
                "lemon", "mango", "nectarine",
            ])
            SeedPhraseView(
                words: [
                    "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew",
                    "kiwi",
                    "lemon", "mango", "nectarine",
                ],
                preferredWordsPerRow: 2
            )
            SeedPhraseView(
                words: [
                    "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew",
                    "kiwi",
                    "lemon", "mango", "nectarine",
                ],
                preferredWordsPerRow: 4
            )
        }
    }
}

#Preview {
    SeedPhraseView(words: [
        "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi",
        "lemon", "mango", "nectarine",
    ])
}

#Preview {
    SeedPhraseView(
        words: [
            "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi",
            "lemon", "mango", "nectarine",
        ],
        preferredWordsPerRow: 2
    )
}

#Preview {
    SeedPhraseView(
        words: [
            "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi",
            "lemon", "mango", "nectarine",
        ],
        preferredWordsPerRow: 4
    )
}
