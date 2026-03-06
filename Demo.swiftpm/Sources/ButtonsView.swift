import SwiftUI
import BitcoinUI

struct ButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("Filled") {
                    Button("BitcoinFilled") {}
                        .buttonStyle(BitcoinFilled())
                    Button("BitcoinFilled (Capsule)") {}
                        .buttonStyle(BitcoinFilled(isCapsule: true))
                    Button("Disabled") {}
                        .buttonStyle(BitcoinFilled())
                        .disabled(true)
                }

                ComponentSection("Outlined") {
                    Button("BitcoinOutlined") {}
                        .buttonStyle(BitcoinOutlined())
                    Button("BitcoinOutlined (Capsule)") {}
                        .buttonStyle(BitcoinOutlined(isCapsule: true))
                    Button("Disabled") {}
                        .buttonStyle(BitcoinOutlined())
                        .disabled(true)
                }

                ComponentSection("Plain") {
                    Button("BitcoinPlain") {}
                        .buttonStyle(BitcoinPlain())
                    Button("Disabled") {}
                        .buttonStyle(BitcoinPlain())
                        .disabled(true)
                }
            }
            .padding()
        }
        .navigationTitle("Buttons")
    }
}

private struct ComponentSection<Content: View>: View {
    let title: String
    let content: Content

    init(_ title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.secondary)
            content
        }
    }
}

#Preview {
    NavigationStack {
        ButtonsView()
    }
}
