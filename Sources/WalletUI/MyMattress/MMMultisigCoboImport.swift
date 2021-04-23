//
//  MMMultisigCoboImport.swift
//  
//
//  Created by Matthew Ramsden on 3/16/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMMultisigCoboImport0: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card75")
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("How this works")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("There are three steps to finalize this transaction before you can send it.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                VStack(alignment: .leading, spacing: 5.0) {
                    
                    Rectangle()
                        .frame(height: 1.0)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                    
                    HStack {
                        
                        ZStack {
                            Circle().frame(width: 50.0, height: 25.0).foregroundColor(Color(UIColor.lightGray))
                            Text("1")
                                .foregroundColor(Color(UIColor.gray))
                        }
                        
                        Text("Copy the unsigned transaction to your Cobo Vault")
                            .font(.caption)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.leading)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)

                    }
                    
                    Rectangle()
                        .frame(height: 1.0)
                        .foregroundColor(Color(UIColor.secondaryLabel))

                    HStack {
                        ZStack {
                            Circle().frame(width: 50.0, height: 25.0).foregroundColor(Color(UIColor.lightGray))
                            Text("2")
                                .foregroundColor(Color(UIColor.gray))
                        }
                        Text("Sign the transaction on your Cobo Vault")
                            .font(.caption)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    
                    Rectangle()
                        .frame(height: 1.0)
                        .foregroundColor(Color(UIColor.secondaryLabel))

                    HStack {
                        ZStack {
                            Circle().frame(width: 50.0, height: 25.0).foregroundColor(Color(UIColor.lightGray))
                            Text("3")
                                .foregroundColor(Color(UIColor.gray))
                        }
                        Text("Copy the signed transaction back to this phone")
                            .font(.caption)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.leading)
                            .padding([.top, .bottom, .trailing])
                    }
                    
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Start")
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

struct MMMultisigCoboImport1: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "cobo-vault")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("On your Cobo Vault...")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("In your multisig wallet, tap the scan icon at the top.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                    Text("In the next step you will scan a QR code with your Cobo Vault to copy the transaction data.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
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

struct MMMultisigCoboImport2: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                Text("Scan this QR code with your Cobo Vault")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(UIColor.label))
                    .multilineTextAlignment(.center)
                
                Image(systemName: "qrcode")
                    .padding(.top)
                    .font(.system(size: 200))
                
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

struct MMMultisigCoboImport3: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "cobo-vault")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Sign the transaction on your Cobo Vault")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Make sure the information matches what is shown below.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    
                }
                
                Rectangle()
                    .frame(height: 1.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                HStack(spacing: 5.0) {
                    Text("To")
                        .bold()
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("3LaQ yFGJ 82tf XNdm jL23 7J6X dvhx RrNf kY")
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.trailing)
                }
                .padding(.top)
                
                Rectangle()
                    .frame(height: 1.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                HStack(spacing: 5.0) {
                    Text("Amount")
                        .bold()
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("₿0.35651816")
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.trailing)
                }
                .padding(.vertical)

                Rectangle()
                    .frame(height: 1.0)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                HStack(spacing: 5.0) {
                    Text("Fee")
                        .bold()
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("₿0.00000987")
                        .font(.body)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.trailing)
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

struct MMMultisigCoboImport4: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "cobo-vault")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Next, copy the signed transaction")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("In the next step you will scan a QR code from your Cobo Vault to copy the signed transaction.")
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

struct MMMultisigCoboImport5: View {
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

struct MMMultisigCoboImport6: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.bitcoinPurple))
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(UIColor.systemBackground))
                }
                .padding(.top, .wallet_grid_vertical_20())
                
                VStack(spacing: 5.0) {

                    Text("Transaction signed")
                        .font(.title3).bold()
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("The following key was read from the QR code.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
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


struct MMMultisigCoboImport_Previews: PreviewProvider {
    static var previews: some View {
        MMMultisigCoboImport0()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport0()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport1()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport1()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport2()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport2()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport3()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport3()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport4()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport4()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport5()
            .environment(\.colorScheme, .light)
//        MMMultisigCoboImport5()
//            .environment(\.colorScheme, .dark)
        MMMultisigCoboImport6()
            .environment(\.colorScheme, .light)
        MMMultisigCoboImport6()
            .environment(\.colorScheme, .dark)
    }
}

#endif
