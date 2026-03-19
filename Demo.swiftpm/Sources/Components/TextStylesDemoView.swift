import SwiftUI
import BitcoinUI

struct TextStylesDemoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("Titles") {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("BitcoinTitle1").textStyle(BitcoinTitle1())
                        Text("BitcoinTitle2").textStyle(BitcoinTitle2())
                        Text("BitcoinTitle3").textStyle(BitcoinTitle3())
                        Text("BitcoinTitle4").textStyle(BitcoinTitle4())
                        Text("BitcoinTitle5").textStyle(BitcoinTitle5())
                    }
                }

                ComponentSection("Body") {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("BitcoinBody1").textStyle(BitcoinBody1())
                        Text("BitcoinBody2").textStyle(BitcoinBody2())
                        Text("BitcoinBody3").textStyle(BitcoinBody3())
                        Text("BitcoinBody4").textStyle(BitcoinBody4())
                        Text("BitcoinBody5").textStyle(BitcoinBody5())
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Text Styles")
    }
}

#Preview {
    NavigationStack {
        TextStylesDemoView()
    }
}
