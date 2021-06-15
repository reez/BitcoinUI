//
//  CopyRecoveryPhraseView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

//#if canImport(UIKit)

/// [Bitcoin Wallet UI Kit](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress))

@available(OSX 10.15, *)
struct NumberWordView: View {
    let number: String
    let word: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 180, height: 60)
                .foregroundColor(Color(UIColor.bitcoinNeutral4))
            Text(number)
                .padding(.trailing, .wallet_grid_10(12))
                .foregroundColor(.black)
            Rectangle()
                .frame(width: 2, height: 60)
                .padding(.trailing, .wallet_grid_10(6))
                .foregroundColor(Color(UIColor.systemBackground))
            Text(word)
                .padding(.trailing, .wallet_grid_10(-6))
                .foregroundColor(.black)
        }
    }
}

struct CopyRecoveryPhraseViewView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                VStack(alignment: .leading) {
                    Text("This is your recovery phrase")
                        .bold()
                        .font(.title2)
                        .padding(.top, .wallet_grid_vertical_20())
                        .padding(.top, .wallet_grid_vertical_20())
                    Text(
                        "Make sure to write it down as shown here. You have to verify this later."
                    )
                    .foregroundColor(Color(UIColor.bitcoinNeutral7))
                    .font(.title3)
                    .fixedSize(horizontal: false, vertical: true)
                    
                }
                
                HStack {
                    
                    VStack {
                        NumberWordView(number: "1", word: "gloom")
                        NumberWordView(number: "3", word: "month")
                        NumberWordView(number: "5", word: "viable")
                        NumberWordView(number: "7", word: "hospital")
                        NumberWordView(number: "9", word: "alcohol")
                        NumberWordView(number: "11", word: "ocean")
                    }
                    
                    VStack {
                        NumberWordView(number: "2", word: "police")
                        NumberWordView(number: "4", word: "stamp")
                        NumberWordView(number: "6", word: "claim")
                        NumberWordView(number: "8", word: "heart")
                        NumberWordView(number: "10", word: "off")
                        NumberWordView(number: "12", word: "ghost")
                    }
                    
                }
                
                VStack(spacing: -33.0) {
                    
                    Button(action: {}) {
                        Text("Backup to iCloud")
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                    }
                    
                    Button(action: {}) {
                        Text("Download as PDF")
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                    }
                    
                    Button(action: {}) {
                        Text("Print")
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                    }
                    
                    Button(action: {}) {
                        Text("Verify")
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color(UIColor.bitcoinOrange))
                            .padding(.horizontal, .wallet_grid_horizontal_10())
                            .padding(.vertical, .wallet_grid_vertical_20())

                    }
                    
                }
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CopyRecoveryPhraseViewView()
                .environment(\.colorScheme, .light)
            CopyRecoveryPhraseViewView()
                .environment(\.colorScheme, .dark)
        }
    }
}

//// #endif
