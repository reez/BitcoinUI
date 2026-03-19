import SwiftUI
import BitcoinUI

struct AddressView: View {
    let address = "tb1pw6y0vtmsn46epvz0j8ddc46ketmp28t82p22hcrrkch3a0jhu40qe267dl"

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("3 Columns (default)") {
                    AddressFormattedView(address: address)
                }

                ComponentSection("4 Columns") {
                    AddressFormattedView(address: address, columns: 4)
                }

                ComponentSection("2 Columns") {
                    AddressFormattedView(address: address, columns: 2)
                }
            }
            .padding()
        }
        .navigationTitle("Address")
    }
}

#Preview {
    NavigationStack {
        AddressView()
    }
}
