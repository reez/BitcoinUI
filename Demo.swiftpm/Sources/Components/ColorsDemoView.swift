import BitcoinUI
import SwiftUI

struct ColorsDemoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("Brand") {
                    colorRow([
                        ("Orange", .bitcoinOrange),
                        ("Red", .bitcoinRed),
                        ("Green", .bitcoinGreen),
                        ("Blue", .bitcoinBlue),
                        ("Purple", .bitcoinPurple),
                    ])
                }

                ComponentSection("Neutral") {
                    colorRow([
                        ("White", .bitcoinWhite),
                        ("N1", .bitcoinNeutral1),
                        ("N2", .bitcoinNeutral2),
                        ("N3", .bitcoinNeutral3),
                        ("N4", .bitcoinNeutral4),
                    ])
                    colorRow([
                        ("N5", .bitcoinNeutral5),
                        ("N6", .bitcoinNeutral6),
                        ("N7", .bitcoinNeutral7),
                        ("N8", .bitcoinNeutral8),
                        ("Black", .bitcoinBlack),
                    ])
                }

                ComponentSection("Special") {
                    colorRow([
                        ("MyMattress", .bitcoinMyMattress)
                    ])
                }
            }
            .padding()
        }
        .navigationTitle("Colors")
    }

    private func colorRow(_ items: [(String, Color)]) -> some View {
        HStack(spacing: 12) {
            ForEach(items, id: \.0) { label, color in
                VStack(spacing: 4) {
                    Circle()
                        .fill(color)
                        .frame(width: 44, height: 44)
                        .overlay(Circle().stroke(Color.secondary.opacity(0.2), lineWidth: 1))
                    Text(label)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ColorsDemoView()
    }
}
