//
//  FSMBCCNIHomeView2.swift
//  
//
//  Created by Matthew Ramsden on 2/13/22.
//

import SwiftUI

struct FSMBCCNIHomeView2: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    Image(systemName: "chart.pie")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
                Spacer()
                
                VStack(spacing: 5.0) {
                    HStack {
                        Text("Savings").font(.custom("Inter Regular", size: 18))
                        Image(systemName: "chevron.down")
                    }
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    
                    Text("₿ 0.0010 000").font(.custom("Inter Regular", size: 24))
                    Text("€ 40,00").font(.custom("Inter Regular", size: 18))
                        .foregroundColor(
                            Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                }
                
                HStack(spacing: 10.0) {
                    
                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.up")
                            Text("Send")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.down")
                            Text("Receive")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }
                    
                }
                .padding(.all)
                
                
                HStack(spacing: 8.0) {
                    Image(systemName: "bolt.fill")
                        .padding(.vertical)
                        .padding(.leading)
                    Text("You can only receive €1 via instant payments.")
                        .font(.footnote)
                        .padding()
                    Spacer()
                    Image(systemName: "arrow.right")
                        .padding()
                }
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color.bitcoinPurple)
                .cornerRadius(5.0)
                
                Spacer()
                
                VStack(spacing: 8.0) {
                    Image(systemName: "chevron.up")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.footnote)
                    Text("Received ₿0.0010 0000").font(.footnote)
                }
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct FSMBCCNIHomeView2_Previews: PreviewProvider {
    static var previews: some View {
        FSMBCCNIHomeView2()
            .environment(\.colorScheme, .light)
        FSMBCCNIHomeView2()
            .environment(\.colorScheme, .dark)
    }
}
