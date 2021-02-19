//
//  MMOnboarding.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMOnboardingCoverView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                BitcoinImage(named: "mattress")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(UIColor.label))
                    .frame(width: 120.0, height: 100.0)
                    .padding(.top, 40.0)
                
                Text("MyMattress")
                    .font(.custom("Paytone One Regular Bold", size: 40))
                
                Text("Rest in peace.")
                    .font(.custom("Inter Regular", size: 18))
                
                Spacer()
                
                Button(action: {}) {
                    Text("Make my Bed")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, .wallet_grid_vertical_20())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.bitcoinMyMattress))
                        .cornerRadius(10.0)
                }
                
            }
            .padding(.horizontal, .wallet_grid_10(4))
            .padding(.vertical, .wallet_grid_10(4))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct NumberButtonView: View {
    let number: String
    let letters: String
    let numberIsHidden: Bool
    let letterIsHidden: Bool
    
    var body: some View {
        Button(action: {}, label: {
            VStack {
                Text(number)
                    .font(.title2)
                    .foregroundColor(
                        numberIsHidden ?
                            Color.clear :
                            Color(UIColor.label)
                    )
                Text(letters.uppercased())
                    .font(.title3)
                    .foregroundColor(
                        letterIsHidden ?
                            Color.clear :
                            Color(UIColor.secondaryLabel)
                    )
                
            }
        })
    }
}

struct MMOnboardingChoosePIN1View: View {
    @State private var val: String = ""
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Spacer()
                
                Text("Choose a PIN")
                    .font(.title2)
                    .foregroundColor(Color(UIColor.label))
                
                Text("Make sure you can remember it.")
                    .font(.title3)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
                
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

struct MMOnboardingChoosePIN2View: View {
    @State private var val: String = ""
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Spacer()
                
                Text("Confirm your PIN")
                    .font(.title2)
                    .foregroundColor(Color(UIColor.label))
                
                Text("Did you remember it?")
                    .font(.title3)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                
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

struct MMOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMOnboardingCoverView()
                .environment(\.colorScheme, .light)
            MMOnboardingCoverView()
                .environment(\.colorScheme, .dark)
            MMOnboardingChoosePIN1View()
                .environment(\.colorScheme, .light)
            MMOnboardingChoosePIN1View()
                .environment(\.colorScheme, .dark)
            MMOnboardingChoosePIN2View()
                .environment(\.colorScheme, .light)
            MMOnboardingChoosePIN2View()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
