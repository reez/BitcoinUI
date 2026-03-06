import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Components") {
                    NavigationLink("Buttons", destination: ButtonsView())
                }
            }
            .navigationTitle("BitcoinUI")
        }
    }
}

#Preview {
    ContentView()
}
