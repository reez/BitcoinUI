//
//  SendView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

#if canImport(UIKit)

    @available(OSX 10.15, *)
    struct FeeView: View {
        let image: String
        let priority: String
        let arrival: String
        let bitcoinFee: String
        let fiatFee: String

        var body: some View {
            HStack {
                Image(systemName: image)
                VStack(alignment: .leading) {
                    Text(priority)
                        .foregroundColor(.black)
                    Text(arrival)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(bitcoinFee)
                        .foregroundColor(.black)
                    Text(fiatFee)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
            .padding(.all)
        }
    }

    struct FeesView: View {
        var body: some View {

            VStack {

                FeeView(
                    image: "circle",
                    priority: "High",
                    arrival: "10 - 20 minutes",
                    bitcoinFee: "₿ 0.00002000",
                    fiatFee: "€0.20"
                )

                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 1.0)
                    .foregroundColor(.gray)

                FeeView(
                    image: "circle.fill",
                    priority: "Medium",
                    arrival: "20 - 60 minutes",
                    bitcoinFee: "₿ 0.00003000",
                    fiatFee: "€0.30"
                )

                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 1.0)
                    .foregroundColor(.gray)

                FeeView(
                    image: "circle",
                    priority: "Low",
                    arrival: "1 - 2 hours",
                    bitcoinFee: "₿ 0.00004000",
                    fiatFee: "€0.40"
                )

                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 1.0)
                    .foregroundColor(.gray)

                HStack {
                    Image(systemName: "circle")

                    VStack(alignment: .leading) {
                        Text("Custom")
                            .foregroundColor(.black)
                    }

                    Spacer()

                    BitcoinImage(named: "Caret right big")
                }
                .padding(.all)

            }

        }
    }

    struct SendView: View {
        var body: some View {

            VStack {

                HStack {
                    Text("Adjust the fee")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.all)

                HStack {
                    Text("Priority & arrival time")
                        .font(.callout)
                    Spacer()
                    Text("Fee")
                        .font(.callout)
                }
                .padding([.leading, .trailing])

                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 1.0)
                    .foregroundColor(.gray)

                FeesView()

                Button(action: {}) {
                    Text("Continue")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
                        .padding()
                }

                Spacer()

            }

        }
    }

    struct SendView_Previews: PreviewProvider {
        static var previews: some View {
            SendView()
        }
    }

#endif
