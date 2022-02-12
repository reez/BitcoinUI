//
//  SwiftUIView.swift
//  
//
//  Created by Matthew Ramsden on 2/12/22.
//

import SwiftUI

struct SwiftUIView: View {
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
                  .foregroundColor(Color(UIColor.systemBackground))
          }

          VStack(spacing: 5.0) {
            Text("You are all set to receive Bitcoin on-chain")
              .bold()
              .font(.title2)
              .foregroundColor(Color(UIColor.label))
            Text("Ask others to send you Bitcoin, or top up the wallet yourself.")
              .font(.title3)
              .foregroundColor(Color(UIColor.secondaryLabel))
          }
          .multilineTextAlignment(.center)


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

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .environment(\.colorScheme, .light)
        SwiftUIView()
            .environment(\.colorScheme, .dark)
    }
}
