//
//  MMMultisigRecoveryView.swift
//  
//
//  Created by Matthew Ramsden on 2/19/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMMultisigRecoverySettings1View: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Which of the following did you lose?")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 2.0) {
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(UIColor.label), lineWidth: 1)
                                    .frame(width: 44.0, height: 44.0)
                                
                                Image(systemName: "cloud.fill")
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                    .font(.title2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Cloud access")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Apple iCloud")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(UIColor.bitcoinGreen))
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .padding(.bottom)
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            BitcoinImage(named: "cobo-group")
                                .padding(.horizontal, 5.0)
                                .foregroundColor(Color(UIColor.label))
                            
                            VStack(alignment: .leading) {
                                Text("Key 2")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Coldcard")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .padding(.bottom)
                    .frame(maxWidth: .infinity)
                    
                 
                    Button(action: {}) {
                        
                        HStack {
                            
                            BitcoinImage(named: "cobo-group")
                                .padding(.horizontal, 5.0)
                                .foregroundColor(Color(UIColor.label))
                            
                            VStack(alignment: .leading) {
                                Text("Key 3")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Coldcard")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .frame(maxWidth: .infinity)
  
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                
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

struct MMMultisigRecoverySettings2View: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("You’re in luck")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("It is possible to create a new wallet and transfer your funds over. This new wallet will not rely on access to the Coldcard you lost.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Start recovery")
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

struct MMMultisigRecoverySettings3View: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("We are sorry")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("By losing cloud both hardware devices, it is technically no longer possible to make transactions with this wallet.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                    Text("Have you tried recovering your hardware devices via their respective recovery mechanisms? It may be possible to recover one of the wallets from backup to a new device.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                }
                
                
                
                Button(action: {}) {
                    Text("Coldcard support")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.label))
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                }
                .padding(.top)
                
                
                Button(action: {}) {
                    Text("Cobo Vault support")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.label))
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                }
                .padding(.vertical)
                
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


struct MMMultisigRecoveryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMMultisigRecoverySettings1View()
                .environment(\.colorScheme, .light)
            MMMultisigRecoverySettings1View()
                .environment(\.colorScheme, .dark)
            MMMultisigRecoverySettings2View()
                .environment(\.colorScheme, .light)
            MMMultisigRecoverySettings2View()
                .environment(\.colorScheme, .dark)
            MMMultisigRecoverySettings3View()
                .environment(\.colorScheme, .light)
            MMMultisigRecoverySettings3View()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
