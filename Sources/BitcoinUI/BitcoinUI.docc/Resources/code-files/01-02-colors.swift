import BitcoinUI
import SwiftUI

struct ColorsTutorial: View {
    var body: some View {

        Text("Bitcoin Orange")
            .font(.caption)
            .foregroundColor(Color.bitcoinOrange)
            .multilineTextAlignment(.center)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsTutorial()
    }
}
