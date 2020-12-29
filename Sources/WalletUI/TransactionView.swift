//
//  TransactionView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

#if canImport(UIKit)

    @available(OSX 10.15, *)
    struct TransactionView: View {
        let imageName: String
        let title: String
        let time: String
        let bitcoin: String
        let fiat: String

        var body: some View {
            VStack {
                Rectangle()
                    .padding(.horizontal)
                    .frame(height: 1.0)
                    .foregroundColor(.gray)
                HStack {
                    Image(systemName: imageName)
                    VStack(alignment: .leading) {
                        Text(title)
                            .foregroundColor(.black)
                        Text(time)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(bitcoin)
                            .foregroundColor(.black)
                        Text(fiat)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.all)
            }
        }

    }

    struct TransactionsView: View {
        var body: some View {

            VStack {

                ZStack {

                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(height: 200.0)
                        .foregroundColor(.black)

                    HStack {
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Your Balance")
                                .foregroundColor(.white)
                            Text("₿ 1.6240 2785")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("€ 10,528.75")
                                .foregroundColor(.white)
                        }
                        .padding(.leading)
                        Spacer()
                    }

                }
                .padding(.all)

                HStack {
                    Text("Transactions")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                    BitcoinImage(named: "Search big")
                }
                .padding([.leading, .trailing])

                TransactionView(
                    imageName: "plus.circle",
                    title: "Timothy Miller",
                    time: "April 12, 2020",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75"
                )

                TransactionView(
                    imageName: "minus.circle",
                    title: "Mount Socks",
                    time: "13 hours ago",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75"
                )

                TransactionView(
                    imageName: "minus.circle",
                    title: "Sending...",
                    time: "13 hours ago",
                    bitcoin: "₿ 17.00000000",
                    fiat: "€1,937,921.00"
                )

                TransactionView(
                    imageName: "plus.circle",
                    title: "Luigi’s pizza",
                    time: "2 days ago",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75"
                )

                VStack {
                    Text("15 delicious Hawaii pizzas.")
                        .foregroundColor(.gray)
                    HStack {
                        Text("Groceries")
                            .font(.caption)
                            .padding(.all, 4.0)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(2)
                        Text("Food")
                            .font(.caption)
                            .padding(.all, 4.0)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(2)
                    }
                }
                .padding(.top, -10.0)

                Spacer()

            }

        }
    }

    struct TransactionsView_Previews: PreviewProvider {
        static var previews: some View {
            TransactionsView()
        }
    }

#endif
