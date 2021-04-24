//
//  MMSingleBedSetupView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMSingleBedIntroView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinBlue))
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Switch security mode to Single Bed")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("A simple security model for lower amounts that allows you to make transactions directly with this phone.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
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

struct MMSingleBedWarningView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinPurple))
                    BitcoinImage(named: "wallet-filled")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("This will cost a little bit")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("To switch modes, a new wallet needs to be created. Funds from your old wallet will be transferred over, which incurs transaction fees.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
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

struct MMSingleBedReadyView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinGreen))
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Your single bed is now ready")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("You have full control over the wallet from this device.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                    Text("Funds from your old wallet will be transferred over.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                }
                
                Button(action: {}) {
                    Text("Done")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
                        .cornerRadius(5.0)

                }
                
                Spacer()

                
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

struct MMSingleBedSetupView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMSingleBedIntroView()
                .environment(\.colorScheme, .light)
            MMSingleBedIntroView()
                .environment(\.colorScheme, .dark)
            MMSingleBedWarningView()
                .environment(\.colorScheme, .light)
            MMSingleBedWarningView()
                .environment(\.colorScheme, .dark)
            MMSingleBedReadyView()
                .environment(\.colorScheme, .light)
            MMSingleBedReadyView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
