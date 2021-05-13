//
//  MMReceiveView.swift
//  
//
//  Created by Matthew Ramsden on 2/16/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMReceiveView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                Image(systemName: "qrcode")
                    .padding(.top)
                    .font(.system(size: 160))
                
                HStack(spacing: 5.0) {
                    Text("Address")
                        .bold()
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("b146 ... 38bu")
                        .font(.body)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.top)
                
                Rectangle()
                    .frame(height: 1.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                
                HStack {
                    Text("Add amount")
                        .font(.body)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                Rectangle()
                    .frame(height: 1.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                HStack {
                    Text("Add description")
                        .font(.body)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Share")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.bitcoinMyMattress)
                        .cornerRadius(5.0)

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

struct MMReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMReceiveView()
                .environment(\.colorScheme, .light)
            MMReceiveView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
