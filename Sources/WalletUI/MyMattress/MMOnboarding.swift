//
//  MMOnboarding.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMOnboardingView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Onboarding")
                Button(action: {}) {
                    Text("Make my Bed")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.bitcoinMyMattress))
                }

            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMOnboardingView()
                .environment(\.colorScheme, .light)
            MMOnboardingView()
                .environment(\.colorScheme, .dark)
        }
    }
}
