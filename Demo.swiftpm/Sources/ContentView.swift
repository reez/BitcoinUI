import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Components") {
                    NavigationLink("Buttons", destination: ButtonsView())
                    NavigationLink("Address", destination: AddressView())
                    NavigationLink("QR Code", destination: QRCodeDemoView())
                    NavigationLink("Seed Phrase", destination: SeedPhrasesDemoView())
                }
                Section("Foundations") {
                    NavigationLink("Text Styles", destination: TextStylesDemoView())
                    NavigationLink("Colors", destination: ColorsDemoView())
                    NavigationLink("Images", destination: ImagesDemoView())
                }
            }
            .navigationTitle("BitcoinUI")
        }
    }
}

#Preview {
    ContentView()
}
