//
//  TransactionView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

struct TransactionView: View {
    let imageName: String
    let title: String
    let time: String
    let bitcoin: String
    let fiat: String
    
    var body: some View {
        VStack {
            Rectangle()
                .padding(.wallet_grid_horizontal_10())
                .frame(height: 1.0)
                .foregroundColor(.gray)
            HStack {
                Image(systemName: imageName)
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(Color(UIColor.label))
                    Text(time)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(bitcoin)
                        .foregroundColor(Color(UIColor.label))
                    Text(fiat)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
    }
    
}

struct TransactionsView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(height: 200.0)
                        .foregroundColor(Color(UIColor.label))
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Your Balance")
                                .foregroundColor(Color(UIColor.systemBackground))
                            Text("₿ 1.6240 2785")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.systemBackground))
                            Text("€ 10,528.75")
                                .foregroundColor(Color(UIColor.systemBackground))
                        }
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        Spacer()
                    }
                    
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    Text("Transactions")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(UIColor.label))
                    Spacer()
                    BitcoinImage(named: "Search big")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                
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
                        .foregroundColor(Color(UIColor.secondaryLabel))
                    HStack {
                        Text("Groceries")
                            .font(.caption)
                            .padding(.all, .wallet_grid_2(2))
                            .foregroundColor(.white)
                            .background(Color(UIColor.secondaryLabel))
                            .cornerRadius(2)
                        Text("Food")
                            .font(.caption)
                            .padding(.all, .wallet_grid_2(2))
                            .foregroundColor(.white)
                            .background(Color(UIColor.secondaryLabel))
                            .cornerRadius(2)
                    }
                }
                .padding(.top, .wallet_grid_10(-1))
                
                Spacer()
                
            }
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.top, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionsView()
                .environment(\.colorScheme, .light)
            TransactionsView()
                .environment(\.colorScheme, .dark)
        }
    }
}
