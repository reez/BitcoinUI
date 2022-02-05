import SwiftUI

struct ColorsTutorial: View {
  var body: some View {

    Text("Orange")
      .font(.caption)
      .foregroundColor(.bitcoinOrange)
      .multilineTextAlignment(.center)

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ColorsTutorial()
  }
}
