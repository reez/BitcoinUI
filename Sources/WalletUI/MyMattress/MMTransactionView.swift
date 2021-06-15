//
//  MMTransactionView.swift
//  
//
//  Created by Matthew Ramsden on 2/15/21.
//

import SwiftUI

// #if canImport(UIKit)

struct MMTransactionRowView: View {
    let status: String
    let time: String
    let bitcoin: String
    let fiat: String
    let color: UIColor
    
    var body: some View {
        VStack {
            Rectangle()
                .padding(.wallet_grid_horizontal_10())
                .frame(height: 1.0)
                .foregroundColor(.gray)
            HStack {
                VStack(alignment: .leading) {
                    Text(status)
                        .foregroundColor(Color(UIColor.label))
                    Text(time)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(bitcoin)
                        .foregroundColor(Color(color))
                    Text(fiat)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
    }
    
}

struct MMTransactionView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Image(systemName: "chevron.up")
                    .padding(.top)
                
                HStack {
                    Spacer()
                    Text("Transactions")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(UIColor.label))
                    Spacer()
                    BitcoinImage(named: "Search big")
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.top, 10.0)

                
                Rectangle()
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .frame(height: 1.0)
                    .foregroundColor(.gray)
                
                MMTransactionRowView(
                    status: "Sending...",
                    time: "2 minutes ago",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75",
                    color: UIColor.secondaryLabel
                )
                
                Rectangle()
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .frame(height: 1.0)
                    .foregroundColor(.gray)
                
                MMTransactionRowView(
                    status: "Received",
                    time: "Yesterday",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75",
                    color: UIColor.bitcoinGreen
                )
                
                Rectangle()
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .frame(height: 1.0)
                    .foregroundColor(.gray)
                
                MMTransactionRowView(
                    status: "Sent",
                    time: "April 12, 2020",
                    bitcoin: "₿ 0.00001000",
                    fiat: "€12.75",
                    color: UIColor.secondaryLabel
                )
                
                Spacer()
                
            }
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.top, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMTransactionView()
                .environment(\.colorScheme, .light)
            MMTransactionView()
                .environment(\.colorScheme, .dark)
        }
    }
}

// #endif
