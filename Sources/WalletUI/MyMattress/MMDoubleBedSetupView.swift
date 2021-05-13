//
//  MMDoubleBedSetupView.swift
//  
//
//  Created by Matthew Ramsden on 3/15/21.
//

import SwiftUI

struct MMDoubleBedDevice3View: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Choose the hardware device to use for key #2")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                }
                
                VStack(spacing: 2.0) {
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            BitcoinImage(named: "coldcard")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 75.0)
                                .foregroundColor(Color(UIColor.label))
                            
                            VStack(alignment: .leading) {
                                Text("Coldcard")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Via SD card adapter")
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
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            BitcoinImage(named: "cobo-vault")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 75.0)
                                .foregroundColor(Color(UIColor.label))
                            
                            VStack(alignment: .leading) {
                                Text("Cobo Vault")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Via QR code scan")
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
                    .padding(.vertical)
                    
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
                        .background(Color.bitcoinOrange)
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

struct MMDoubleBedDeviceReviewView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Ready to make that spacious, comfortable double bed?")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Review the key configuration below. To transact, you will create transactions on this device and need to sign them with one of your hardware devices.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 2.0) {
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(UIColor.label), lineWidth: 1)
                                    .frame(width: 50.0, height: 50.0)
                                
                                Image(systemName: "cloud.fill")
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                    .font(.title2)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Key 1")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Cloud backup")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "checkmark")
                                .foregroundColor(.bitcoinGreen)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        
                        HStack {
                                                            
                            BitcoinImage(named: "coldcard")
                            
                            VStack(alignment: .leading) {
                                Text("Key 2")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Coldcard")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "checkmark")
                                .foregroundColor(.bitcoinGreen)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    
                    Button(action: {}) {
                        
                        HStack {
                            
                            BitcoinImage(named: "cobo-vault")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 75.0)
                                .foregroundColor(Color(UIColor.label))
                            
                            VStack(alignment: .leading) {
                                Text("Key 3")
                                    .font(.body)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Cobo Vault")
                                    .font(.callout)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                            }
                            
                        }
                        
                        Spacer()
                        
                        Image(systemName: "checkmark")
                            .foregroundColor(.bitcoinGreen)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.all)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                    )
                    
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
                        .background(Color.bitcoinOrange)
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

struct MMTripleBedReadyView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.bitcoinGreen)
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Your triple bed is made")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("You can view all transactions made with this wallet.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                    Text("Transactions need to be signed with 1 other device before you can send them.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("Funds from your old wallet will be transferred over.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Done")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.bitcoinOrange)
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

struct MMTripleBedBackupWalletView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Back up this wallet")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("In addition to your own key, you should back up the configuration of this wallet so you can restore it easily at a later point, or another device.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                }
                                
                Button(action: {}) {
                    Text("Save to iCloud")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.bitcoinOrange)
                        .cornerRadius(5.0)

                }
                .padding(.top)
                .padding(.bottom)
                
                Rectangle()
                    .frame(height: 2.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                WalletSetupView()
 
                YourKeyView()
  
                
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


struct WalletSetupView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Wallet Setup")
                    .font(.headline)
                    .padding(.top)
                Spacer()
            }
            .padding(.bottom)
            
            HStack(spacing: 5.0) {
                Text("Name")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("Money bag")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            
            Rectangle()
                .frame(height: 1.0)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            HStack(spacing: 5.0) {
                Text("Policy")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("2 of 2")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            
            Rectangle()
                .frame(height: 1.0)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            HStack(spacing: 5.0) {
                Text("Derivation path")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("m/48'/0'/0'/2'")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            
            Rectangle()
                .frame(height: 1.0)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            HStack(spacing: 5.0) {
                Text("Format")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("P2WSH")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            
        }
    }
}

struct YourKeyView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Your Key")
                    .font(.headline)
                    .padding(.top)
                Spacer()
            }
            
            Rectangle()
                .frame(height: 1.0)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            
            HStack(spacing: 5.0) {
                Text("Device ID")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("CC5B38J")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            
            Rectangle()
                .frame(height: 1.0)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Master public key")
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                    
                Text("Zpub6yehdxdWySPFRwJ7xkx4iT9Af1v")
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.center)
            }
            .padding(.leading, -30.0)
            
            
        }
    }
}

struct MMDoubleBedSetupView_Previews: PreviewProvider {
    static var previews: some View {
        MMDoubleBedDevice3View()
            .environment(\.colorScheme, .light)
        MMDoubleBedDevice3View()
            .environment(\.colorScheme, .dark)
        MMDoubleBedDeviceReviewView()
            .environment(\.colorScheme, .light)
        MMDoubleBedDeviceReviewView()
            .environment(\.colorScheme, .dark)
        MMTripleBedReadyView()
            .environment(\.colorScheme, .light)
        MMTripleBedReadyView()
            .environment(\.colorScheme, .dark)
        MMTripleBedBackupWalletView()
            .environment(\.colorScheme, .light)
        MMTripleBedBackupWalletView()
            .environment(\.colorScheme, .dark)
    }
}
