//
//  MMDoubleBedSetupView.swift
//  
//
//  Created by Matthew Ramsden on 2/11/21.
//

import SwiftUI

struct MMDoubleBedIntroView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.bitcoinMyMattress)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Switch security mode to Triple Bed")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.white))
                        .multilineTextAlignment(.center)
                    
                    Text("Improve your wallet security by setting up 2 hardware devices.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                    
                    Text("Be aware that you will need to approve each new transaction on a hardware device before you can send it.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("You will need 2 hardware devices")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(UIColor.white))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("We support Coldcard and Cobo Vault.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                }
                
                HStack {
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
//                        .font(.footnote)
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
//                        .font(.footnote)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .background(Color(UIColor.white))
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

struct MMDoubleBedSetupView_Previews: PreviewProvider {
    static var previews: some View {
        MMDoubleBedIntroView()
            .environment(\.colorScheme, .light)
        MMDoubleBedIntroView()
            .environment(\.colorScheme, .dark)
    }
}
