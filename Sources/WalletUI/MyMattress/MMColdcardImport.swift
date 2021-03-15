//
//  MMColdcardImport.swift
//  
//
//  Created by Matthew Ramsden on 3/13/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMColdcardImport0: View {
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
                    
                    Text("Make sure you have a Coldcard device and a Lightning SD Card adapter for your iPhone at hand.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                HStack(spacing: 20.0) {
                    BitcoinImage(named: "coldcard150")
                        .foregroundColor(Color(UIColor.label))
                    BitcoinImage(named: "lightning-sd-card-adapter150")
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

struct MMColdcardImport1: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "coldcard75")
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("On your Coldcard...")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Export your master public key")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 5.0) {
                    Text("- Settings")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Multisig wallet")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Export XPUB")
                        .font(.caption)
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

struct MMColdcardImport2: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card75")
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Connect your SD card")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Remove the SD card from your Coldcard and connect it to your phone via the adapter.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom)

                ProgressView()
                    .padding(.top, .wallet_grid_vertical_20())
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .leading)
                
                VStack(spacing: 5.0) {

                    Text("Looking for SD card...")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.top)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinNeutral4))
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

struct MMColdcardImport3: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card75")
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Connect your SD card")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Remove the SD card from your Coldcard and connect it to your phone via the adapter.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom)

                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinPurple))
                    Image(systemName: "checkmark")
                }
                .padding(.top, .wallet_grid_vertical_20())
                
                VStack(spacing: 5.0) {

                    Text("Success")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.top)
                
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


struct MMColdcardImport_Previews: PreviewProvider {
    static var previews: some View {
        MMColdcardImport0()
            .environment(\.colorScheme, .light)
        MMColdcardImport0()
            .environment(\.colorScheme, .dark)
        MMColdcardImport1()
            .environment(\.colorScheme, .light)
        MMColdcardImport1()
            .environment(\.colorScheme, .dark)
        MMColdcardImport2()
            .environment(\.colorScheme, .light)
        MMColdcardImport2()
            .environment(\.colorScheme, .dark)
        MMColdcardImport3()
            .environment(\.colorScheme, .light)
        MMColdcardImport3()
            .environment(\.colorScheme, .dark)
    }
}

#endif
