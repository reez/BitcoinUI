import BitcoinUI
import SwiftUI

struct SeedPhrasesDemoView: View {
    private let words12 = [
        "paddle", "train", "boil", "catch", "trim", "plastic",
        "wolf", "hazard", "govern", "oval", "drama", "gun",
    ]
    private let words24 = [
        "paddle", "train", "boil", "catch", "trim", "plastic",
        "wolf", "hazard", "govern", "oval", "drama", "gun",
        "swim", "accuse", "degree", "teach", "game", "penalty",
        "social", "hard", "crush", "media", "radar", "click",
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("12 Words (2 per row)") {
                    SeedPhraseView(words: words12, preferredWordsPerRow: 2)
                }

                ComponentSection("12 Words (3 per row)") {
                    SeedPhraseView(words: words12, preferredWordsPerRow: 3)
                }

                ComponentSection("24 Words with Paging") {
                    SeedPhraseView(
                        words: words24,
                        preferredWordsPerRow: 2,
                        usePaging: true,
                        wordsPerPage: 6
                    )
                    .frame(height: 200)
                }

                ComponentSection("Privacy Sensitive") {
                    SeedPhraseView(
                        words: words12,
                        preferredWordsPerRow: 2,
                        privacySensitive: true
                    )
                }
            }
            .padding()
        }
        .navigationTitle("Seed Phrase")
    }
}

#Preview {
    NavigationStack {
        SeedPhrasesDemoView()
    }
}
