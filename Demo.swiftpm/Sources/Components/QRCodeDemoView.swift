import BitcoinUI
import SwiftUI

struct QRCodeDemoView: View {
    private let address = "tb1q05g8l05sgqsnzuc2mrmq0chlq7ktxtce4js5dj"
    private let invoice =
        "lntbs1234560u1pnf4qfudq4f4hkuerp0ys9wctvd3jhgnp4q235egp5u2nec2ddcza8eykpd3gl3g0es0m7gncarzeuwuw6xhpqq"

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                ComponentSection("Bitcoin") {
                    QRCodeView(qrCodeType: .bitcoin(address))
                        .frame(maxWidth: 240)
                        .frame(maxWidth: .infinity)
                }

                ComponentSection("Bitcoin (Rounded)") {
                    QRCodeView(qrCodeType: .bitcoin(address), cornerRadius: 20)
                        .frame(maxWidth: 240)
                        .frame(maxWidth: .infinity)
                }

                ComponentSection("Lightning") {
                    QRCodeView(qrCodeType: .lightning(invoice))
                        .frame(maxWidth: 240)
                        .frame(maxWidth: .infinity)
                }

                ComponentSection("BIP21") {
                    QRCodeView(
                        qrCodeType: .bip21(
                            "bitcoin:\(address)?amount=0.001&label=Demo"
                        ),
                        cornerRadius: 12
                    )
                    .frame(maxWidth: 240)
                    .frame(maxWidth: .infinity)
                }

                ComponentSection("Custom Colors") {
                    QRCodeView(
                        qrCodeType: .bitcoin(address),
                        cornerRadius: 16,
                        foregroundColor: .bitcoinOrange,
                        backgroundColor: .black
                    )
                    .frame(maxWidth: 240)
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .navigationTitle("QR Code")
    }
}

#Preview {
    NavigationStack {
        QRCodeDemoView()
    }
}
