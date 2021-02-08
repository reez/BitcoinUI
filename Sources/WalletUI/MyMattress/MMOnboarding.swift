//
//  MMOnboarding.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMOnboardingCoverView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                BitcoinImage(named: "mattress")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(UIColor.label))
                    .frame(width: 120.0, height: 100.0)
                    .padding(.top, 40.0)

                Text("MyMattress")
                    .font(.custom("Paytone One Regular Bold", size: 40))
                
                Text("Rest in peace.")
                    .font(.custom("Inter Regular", size: 18))
                
                Spacer()

                Button(action: {}) {
                    Text("Make my Bed")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.bitcoinMyMattress))
                        .cornerRadius(10.0)
                }

            }
            .padding(.horizontal, .wallet_grid_10(4))
            .padding(.vertical, .wallet_grid_10(4))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMOnboardingCoverView()
                .environment(\.colorScheme, .light)
            MMOnboardingCoverView()
                .environment(\.colorScheme, .dark)
        }
    }
}
