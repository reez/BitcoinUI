//
//  MMLoginView.swift
//  
//
//  Created by Matthew Ramsden on 2/15/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMLoginPINEntryView: View {
    @State private var val: String = ""
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Spacer()
                
                Text("Enter your PIN to log in")
                    .font(.title2)
                    .foregroundColor(Color(UIColor.label))
                
                HStack {
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(.black)
                    
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 20.0, height: 20.0)
                    
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 20.0, height: 20.0)
                    
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 20.0, height: 20.0)
                    
                }
                
                Spacer()

                Text("Forgot PIN?")
                    .font(.title3)
                    .foregroundColor(Color(UIColor.label))
                                
                VStack(alignment: .center) {
                    HStack {
                        NumberButtonView(number: "1", letters: "aaa", numberIsHidden: false, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "2", letters: "abc", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "3", letters: "def", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .padding(.vertical)

                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: "4", letters: "ghi", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "5", letters: "jkl", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "6", letters: "mno", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: "7", letters: "pqrs", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "8", letters: "tuv", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "9", letters: "wxyz", numberIsHidden: false, letterIsHidden: false)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    
                    HStack {
                        NumberButtonView(number: "1", letters: "aaa", numberIsHidden: true, letterIsHidden: true)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        NumberButtonView(number: "0", letters: "aaa", numberIsHidden: false, letterIsHidden: false)
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
                
            }
            .padding(.horizontal, .wallet_grid_10(4))
            .padding(.vertical, .wallet_grid_10(4))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMLoginPINLoadingView: View {
    @State private var val: String = ""
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Spacer()
            
                ProgressView()
                    .padding(.top, .wallet_grid_vertical_20())
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .center)
                
                Text("Restoring wallet from iCloud...")
                    .font(.title3)
                    .foregroundColor(Color(UIColor.label))
                    .padding([.top, .leading, .trailing], 40.0)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
            }
            .padding(.horizontal, .wallet_grid_10(4))
            .padding(.vertical, .wallet_grid_10(4))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}


struct MMLoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMLoginPINEntryView()
                .environment(\.colorScheme, .light)
            MMLoginPINEntryView()
                .environment(\.colorScheme, .dark)
            MMLoginPINLoadingView()
                .environment(\.colorScheme, .light)
            MMLoginPINLoadingView()
                .environment(\.colorScheme, .dark)
        }

    }
}

#endif
