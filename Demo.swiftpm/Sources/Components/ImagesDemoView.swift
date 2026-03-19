import BitcoinUI
import SwiftUI

struct ImagesDemoView: View {
    private let icons = [
        "bitbox", "blockstream-jade", "cobo-vault", "coldcard",
        "foundation-passport", "generic-hardware-wallet", "keepkey",
        "ledger-nano", "opendime", "satoshi-v2", "seedplate",
        "trezor-model-t", "trezor-one",
    ]

    private let columns = [
        GridItem(.adaptive(minimum: 80), spacing: 16)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                ComponentSection("Hardware Wallets") {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(icons, id: \.self) { name in
                            VStack(spacing: 6) {
                                BitcoinImage(named: name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 48, height: 48)
                                Text(name)
                                    .font(.caption2)
                                    .foregroundStyle(.secondary)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Images")
    }
}

#Preview {
    NavigationStack {
        ImagesDemoView()
    }
}
