//
//  MMHomeView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

#if canImport(UIKit)

struct MMHomeBlankView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
    
            VStack(spacing: 20.0) {
                
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
                Spacer()
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.bitcoinGreen)
                    Image(systemName: "checkmark")
                }
                
                VStack(spacing: 5.0) {
                    Text("You are all set to receive Bitcoin")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color(UIColor.label))
                    Text("Ask others to send you Bitcoin, or top up the wallet yourself.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Button(action: {}) {
                    HStack {
                        Text("View address")
                        Image(systemName: "arrow.forward")
                    }
                    .padding(.horizontal, .wallet_grid_horizontal_10())
                    .padding(.vertical, .wallet_grid_vertical_20())
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(UIColor.systemBackground))
                    .background(Color.bitcoinMyMattress)
                    .cornerRadius(10.0)
                }
                .padding(.top)
                .padding(.horizontal, .wallet_grid_10(4))
                
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

struct MMHomeSimplifiedView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack(spacing: 20.0) {
                
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
                Spacer()
                
                BitcoinImage(named: "single-bed-big")
                
                VStack(spacing: 5.0) {
                    Text("₿ 1.6240 2785").font(.custom("Inter Regular", size: 24))
                    Text("$ 41,328.91").font(.custom("Inter Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                }
                                
                HStack(spacing: 10.0) {
                    
                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.up")
                            Text("Send")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }

                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.down")
                            Text("Receive")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }

                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack(spacing: 8.0) {
                    Image(systemName: "chevron.up")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.footnote)
                    Text("1 transaction today")                                .font(.footnote)
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

struct MMHomeMultisigView: View {

    var body: some View {

        ZStack {
            Color(.bitcoinMyMattress)

            VStack(spacing: 20.0) {
                
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(UIColor.white))
                }

                Spacer()

                BitcoinImage(named: "triple-bed-big-filled")

                VStack(spacing: 5.0) {
                    Text("₿ 1.6240 2785").font(.custom("Inter Regular", size: 24))
                    Text("$ 41,328.91").font(.custom("Inter Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                }

                HStack(spacing: 10.0) {

                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.up")
                            Text("Send")
                                .foregroundColor(Color(UIColor.lightGray))
                                .font(.footnote)
                        }
                    }

                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.down")
                            Text("Receive")
                                .foregroundColor(Color(UIColor.lightGray))
                                .font(.footnote)
                        }
                    }

                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                Spacer()

                VStack(spacing: 8.0) {
                    Image(systemName: "chevron.up")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.footnote)
                    Text("1 transaction today")                                .font(.footnote)
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

struct MMHomeMessageView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack(spacing: 20.0) {
                
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
                Spacer()
                
                BitcoinImage(named: "single-bed-big")
                
                VStack(spacing: 5.0) {
                    Text("₿ 1.6240 2785").font(.custom("Inter Regular", size: 24))
                    Text("$ 41,328.91").font(.custom("Inter Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                }
                                
                HStack(spacing: 10.0) {
                    
                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.up")
                            Text("Send")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }

                    ZStack {
                        Rectangle()
                            .stroke()
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .frame(width: 140.0, height: 90.0)
                        VStack(spacing: 8.0) {
                            Image(systemName: "arrow.down")
                            Text("Receive")
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                .font(.footnote)
                        }
                    }

                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                HStack(spacing: 40.0) {
                    Text("Set a recovery email and sleep more peacefully.")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(.footnote)
                
                Spacer()
                
                VStack(spacing: 8.0) {
                    Image(systemName: "chevron.up")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.footnote)
                    Text("Receiving ₿0.00500000")                                .font(.footnote)
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

struct MMHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMHomeBlankView()
                .environment(\.colorScheme, .light)
            MMHomeBlankView()
                .environment(\.colorScheme, .dark)
            MMHomeSimplifiedView()
                .environment(\.colorScheme, .light)
            MMHomeSimplifiedView()
                .environment(\.colorScheme, .dark)
            MMHomeMultisigView()
                .environment(\.colorScheme, .light)
            MMHomeMultisigView()
                .environment(\.colorScheme, .dark)
            MMHomeMessageView()
                .environment(\.colorScheme, .light)
            MMHomeMessageView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
