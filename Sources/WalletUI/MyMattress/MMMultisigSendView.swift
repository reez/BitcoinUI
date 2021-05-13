//
//  MMMultisigSendView.swift
//  
//
//  Created by Matthew Ramsden on 2/19/21.
//

import SwiftUI

struct MMMultisigSendScanView: View {
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

struct MMMultisigSendAmountView: View {
    @State private var val: String = ""
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 5.0) {
                
                Spacer()
                
                Text("₿ 1.6240 2785")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor.label))
                
                Text("$ 41,328.91")
                    .font(.title2)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .padding(.bottom)
                
                HStack {
                    
                    Text("Balance:")
                        .font(.callout)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                    
                    Text("₿ 2.5000 0000")
                        .font(.callout)
                        .foregroundColor(Color(UIColor.label))
                    
                }
                
                Spacer()
                
                VStack(alignment: .center) {
                    HStack {
                        NumberButtonView(number: "1", letters: "aaa", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "2", letters: "abc", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "3", letters: "def", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: "4", letters: "ghi", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "5", letters: "jkl", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "6", letters: "mno", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: "7", letters: "pqrs", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "8", letters: "tuv", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "9", letters: "wxyz", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: ".", letters: "aaa", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "0", letters: "aaa", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        VStack {
                            Image(systemName: "chevron.backward.square.fill")
                            Text("abc")
                                .foregroundColor(.clear).font(.title3)
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                
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
            .padding(.horizontal, .wallet_grid_10(4))
            .padding(.vertical, .wallet_grid_10(4))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMMultisigSendFeeView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                HStack {
                    Text("Adjust the fee")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(UIColor.label))
                        .padding(.top, .wallet_grid_vertical_20())
                        .padding(.top, .wallet_grid_vertical_20())
                    Spacer()
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.top, .wallet_grid_vertical_20())
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("Fast")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("10 - 20 minutes")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("₿0.00001000")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("€0.20")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                )
                .padding(.all)
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("Medium")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("20 - 60 minutes")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("₿0.00002000")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("€0.30")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color.bitcoinOrange, lineWidth: 1.0)
                )
                .padding(.all)
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("Slow")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("1 - 2 hours")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("₿0.00003000")
                            .font(.body)
                            .foregroundColor(Color(UIColor.label))
                        Text("€0.40")
                            .font(.callout)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.all)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                )
                .padding(.all)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Continue")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.bitcoinOrange)
                        .cornerRadius(5.0)
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                    
                }
                .padding(.bottom)
                
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMMultisigSendSettingsView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                VStack(spacing: 5.0) {
                    Text("Choose the device to use for signing this transaction")
                        .bold()
                        .font(.title2)
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

struct MMMultisigSendCreationView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(Color.bitcoinGreen)
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(UIColor.systemBackground))
                }
                
                VStack(spacing: 5.0) {
                    Text("Send this transaction?")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                }
                
                VStack {
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
                    
                    Rectangle()
                        .frame(height: 1.0)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                    
                    HStack(spacing: 5.0) {
                        Text("Add description...")
                            .bold()
                            .font(.body)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.top)
                    
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Send it")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.orange))
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

struct MMMultisigSendView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMMultisigSendScanView()
                .environment(\.colorScheme, .light)
            MMMultisigSendScanView()
                .environment(\.colorScheme, .dark)
            MMMultisigSendAmountView()
                .environment(\.colorScheme, .light)
            MMMultisigSendAmountView()
                .environment(\.colorScheme, .dark)
            MMMultisigSendFeeView()
                .environment(\.colorScheme, .light)
            MMMultisigSendFeeView()
                .environment(\.colorScheme, .dark)
            MMMultisigSendSettingsView()
                .environment(\.colorScheme, .light)
            MMMultisigSendSettingsView()
                .environment(\.colorScheme, .dark)
            MMMultisigSendCreationView()
                .environment(\.colorScheme, .light)
            MMMultisigSendCreationView()
                .environment(\.colorScheme, .dark)
        }
    }
}
