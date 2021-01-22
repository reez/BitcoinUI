//
//  OnboardingView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

#if canImport(UIKit)

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
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 120))
                .foregroundColor(.black)
            Rectangle()
                .frame(width: 2, height: 60)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 60))
                .foregroundColor(Color(UIColor.systemBackground))
            Text(word)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -60))
                .foregroundColor(.black)
        }
    }
}

struct OnboardingView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("This is your recovery phrase")
                        .bold()
                        .font(.title2)
                        .padding(.top, 20.0)
                    Text("Make sure to write it down as shown here. You have to verify this later.")
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
                
                VStack(spacing: -21.0) {
                    
                    Button(action: {}) {
                        Text("Backup to iCloud")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding()
                    }
                    
                    Button(action: {}) {
                        Text("Download as PDF")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding()
                    }
                    
                    Button(action: {}) {
                        Text("Print")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(UIColor.label))
                            .border(Color(UIColor.bitcoinNeutral4))
                            .padding()
                    }
                    
                    Button(action: {}) {
                        Text("Verify")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color(UIColor.bitcoinOrange))
                            .padding()
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
            OnboardingView()
                .environment(\.colorScheme, .light)
            OnboardingView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
