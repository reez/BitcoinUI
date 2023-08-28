import BitcoinUI
import SwiftUI

struct ImagesTutorial: View {
    var body: some View {

        BitcoinImage(named: "coldcard")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 75.0)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesTutorial()
    }
}
