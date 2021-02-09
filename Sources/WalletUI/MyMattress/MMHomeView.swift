//
//  MMHomeView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMHomeBlankView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.green)
                    Image(systemName: "checkmark")
                }
                
                VStack(spacing: 5.0) {
                    Text("You are all set to receive Bitcoin")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color(UIColor.label))
                    Text("Ask others to send you Bitcoin, or top up the wallet yourself.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Button(action: {}) {
                    HStack {
                        Text("View address")
                        Image(systemName: "arrow.forward")
                    }
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(UIColor.systemBackground))
                    .background(Color(UIColor.bitcoinMyMattress))
                    .cornerRadius(10.0)
                }
                .padding(.top)
                .padding(.horizontal, .wallet_grid_10(4))
                
                
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

struct MMHomeSimplifiedView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack(spacing: 20.0) {
                
   
                
                VStack(spacing: 5.0) {
                    Text("₿ 1.6240 2785").font(.custom("Inter Regular", size: 24))
                    Text("$ 41,328.91").font(.custom("Inter Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                }
                
                Button(action: {}) {
                    HStack {
                        Text("View address")
                        Image(systemName: "arrow.forward")
                    }
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(UIColor.systemBackground))
                    .background(Color(UIColor.bitcoinMyMattress))
                    .cornerRadius(10.0)
                }
                .padding(.top)
                .padding(.horizontal, .wallet_grid_10(4))
                
                
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

struct MMHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMHomeBlankView()
                .environment(\.colorScheme, .light)
            MMHomeBlankView()
                .environment(\.colorScheme, .dark)
            MMHomeSimplifiedView()
                .environment(\.colorScheme, .light)
            MMHomeSimplifiedView()
                .environment(\.colorScheme, .dark)
        }
    }
}
