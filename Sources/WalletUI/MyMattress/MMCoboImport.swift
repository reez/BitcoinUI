//
//  MMCoboImport.swift
//  
//
//  Created by Matthew Ramsden on 3/13/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMCoboImport0: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Before you start")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Make sure you have a Cobo Vault device at hand.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                HStack(spacing: 20.0) {
                    BitcoinImage(named: "cobo150")
                        .foregroundColor(Color(UIColor.label))
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

struct MMCoboImport1: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "coldcard75")
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("On your Cobo Vault...")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Display your master public key:")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 5.0) {
                    Text("- Choose multisig in the main menu")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Tap the three dots in the top-right")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Tap “Show/Export XPUB")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Text("In the next step, you will scan the QR code to copy the key.")
                    .font(.caption)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
                
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

struct MMCoboImport2: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.black)
            
            VStack(spacing: 20.0) {
                Image(systemName: "viewfinder")
                    .padding(.top)
                    .font(.system(size: 200))
                    .foregroundColor(.white)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}



struct MMCoboImport3: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinPurple))
                    Image(systemName: "checkmark")
                }
                .padding(.top, .wallet_grid_vertical_20())
                
                VStack(spacing: 5.0) {

                    Text("Key Copied")
                        .font(.title3).bold()
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("The following key was read from the QR code.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.top)
                
                VStack(spacing: 5.0) {
                    Text("xpub6DE1bvvTaMkDaAghedChtufg3rDPeYdWt9sM5iTwBVYe9X6bmLenQrSexSa1qDscYtidSMUEo9u7TuXg48Y3hBXzUaEToH1rVgvif")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .padding()
                        .background(Color(UIColor.bitcoinNeutral2))
                        .cornerRadius(5)
                        .multilineTextAlignment(.center)
                }
                .padding(.top)


                
                Spacer()
                
                Button(action: {}) {
                    Text("Looks good")
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


struct MMCoboImport_Previews: PreviewProvider {
    static var previews: some View {
        MMCoboImport0()
            .environment(\.colorScheme, .light)
        MMCoboImport0()
            .environment(\.colorScheme, .dark)
        MMCoboImport1()
            .environment(\.colorScheme, .light)
        MMCoboImport1()
            .environment(\.colorScheme, .dark)
        MMCoboImport2()
            .environment(\.colorScheme, .light)
        MMCoboImport2()
            .environment(\.colorScheme, .dark)
        MMCoboImport3()
            .environment(\.colorScheme, .light)
        MMCoboImport3()
            .environment(\.colorScheme, .dark)
    }
}

#endif
