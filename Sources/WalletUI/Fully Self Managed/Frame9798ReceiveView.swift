//
//  Frame9798ReceiveView.swift
//  
//
//  Created by Matthew Ramsden on 2/18/22.
//

import SwiftUI

struct Frame9798ReceiveView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                Spacer()
                
                VStack(spacing: 5.0) {
                    Text("Share with sender")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color(UIColor.label))
                }
                .multilineTextAlignment(.center)
                .padding(.vertical, .wallet_grid_vertical_20())
                
                Image(systemName: "qrcode")
                    .font(.system(size: 160))
                    .padding(.vertical, .wallet_grid_vertical_20())
                
                HStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "paperplane.fill")
                            Text("Share")
                                .padding(.horizontal, .wallet_grid_horizontal_10())
                                .frame(maxWidth: .infinity)
                        }
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                        HStack {
                            Image(systemName: "doc.on.doc.fill")
                            Text("Copy")
                                .padding(.horizontal, .wallet_grid_horizontal_10())
                                .frame(maxWidth: .infinity)
                        }
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )

                    }
                }
                .padding(.vertical, .wallet_grid_vertical_20())

                Spacer()
                
                HStack(spacing: 8.0) {
                    Image(systemName: "bolt.fill")
                        .foregroundColor(Color(UIColor.label))
                    Text("Supports regular and instant payments")
                }
                .foregroundColor(Color(UIColor.secondaryLabel))
                .font(.footnote)

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

struct Frame9798ReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        Frame9798ReceiveView()
            .environment(\.colorScheme, .light)
        Frame9798ReceiveView()
            .environment(\.colorScheme, .dark)
    }
}
