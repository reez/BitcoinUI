//
//  MMMultisigColdcardImport.swift
//  
//
//  Created by Matthew Ramsden on 3/16/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMMultisigColdcardImport0: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
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
                        
                        Text("Copy the unsigned transaction to your Coldcard")
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
                        Text("Sign the transaction on your Coldcard")
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

struct MMMultisigColdcardImport1: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Connect your SD card")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Via your Lightning adapter.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                ProgressView()
                    .padding(.top, .wallet_grid_vertical_20())
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .leading)
                
                Text("Looking For SD card...")
                    .font(.body)
                    .padding(.top, .wallet_grid_vertical_20())

                Spacer()
                
                Button(action: {}) {
                    Text("Save transaction file")
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

struct MMMultisigColdcardImport2: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "coldcard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("On your Coldcard...")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Plug in your SD card and sign the transaction.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom)
                
                VStack(spacing: 5.0) {
                    Text("- Main menu")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Ready to sign")
                        .font(.caption)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    Text("- Select the transaction file from your SD Card")
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

struct MMMultisigColdcardImport3: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Connect your SD card")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Via your Lightning adapter.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                ProgressView()
                    .padding(.top, .wallet_grid_vertical_20())
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .leading)
                
                Text("Looking For SD card...")
                    .font(.body)
                    .padding(.top, .wallet_grid_vertical_20())

                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.lightGray))
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

struct MMMultisigColdcardImport4: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                HStack {
                    BitcoinImage(named: "sd-card")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75.0)
                        .foregroundColor(Color(UIColor.label))
                }
                
                VStack(spacing: 5.0) {
                    Text("Connect your SD card")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Via your Lightning adapter.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color(UIColor.purple))
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(UIColor.systemBackground))
                }
                .padding(.top, .wallet_grid_vertical_20())
                
                Text("Success")
                    .font(.body)

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

struct MMMultisigColdcardImport_Previews: PreviewProvider {
    static var previews: some View {
        MMMultisigColdcardImport0()
            .environment(\.colorScheme, .light)
        MMMultisigColdcardImport0()
            .environment(\.colorScheme, .dark)
        MMMultisigColdcardImport1()
            .environment(\.colorScheme, .light)
        MMMultisigColdcardImport1()
            .environment(\.colorScheme, .dark)
        MMMultisigColdcardImport2()
            .environment(\.colorScheme, .light)
        MMMultisigColdcardImport2()
            .environment(\.colorScheme, .dark)
        MMMultisigColdcardImport3()
            .environment(\.colorScheme, .light)
        MMMultisigColdcardImport3()
            .environment(\.colorScheme, .dark)
        MMMultisigColdcardImport4()
            .environment(\.colorScheme, .light)
        MMMultisigColdcardImport4()
            .environment(\.colorScheme, .dark)
    }
}

#endif
