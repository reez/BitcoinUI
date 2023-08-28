import SwiftUI
import BitcoinUI

struct ColorsTutorial: View {
    var body: some View {

        Text("Bitcoin Orange")
            .font(.caption)
            .foregroundColor(Color(UIColor.bitcoinOrange))
            .multilineTextAlignment(.center)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsTutorial()
    }
}
