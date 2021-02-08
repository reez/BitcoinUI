//
//  MMOnboarding.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

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

struct MMOnboardingChoosePIN1View: View {
    @State private var val: String = ""

    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                
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
                
                TextField("1111", text: $val)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)


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
                
                TextField("enter pin", text: $val)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)


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
