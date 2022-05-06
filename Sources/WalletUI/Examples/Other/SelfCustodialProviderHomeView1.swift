//
//  SelfCustodialProviderHomeView1.swift
//
//
//  Created by Matthew Ramsden on 2/13/22.
//

import SwiftUI

struct SelfCustodialProviderHomeView1: View {
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

        VStack(spacing: 5.0) {
          HStack {
            Text("Savings").font(.custom("Inter Regular", size: 18))
            Image(systemName: "chevron.down")
          }
          .foregroundColor(Color(UIColor.secondaryLabel))

          Text("Your wallet is empty").font(.custom("Inter Regular", size: 24))
        }

        HStack(spacing: 10.0) {

          ZStack {
            Rectangle()
              .stroke()
              .foregroundColor(Color(UIColor.secondaryLabel))
              .frame(width: 140.0, height: 90.0)
            VStack(spacing: 8.0) {
              Image(systemName: "cart.fill")
              Text("Buy")
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
        .padding( /*@START_MENU_TOKEN@*/.all /*@END_MENU_TOKEN@*/)

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

struct SCPNBNCHomeView1_Previews: PreviewProvider {
  static var previews: some View {
    SelfCustodialProviderHomeView1()
      .environment(\.colorScheme, .light)
    SelfCustodialProviderHomeView1()
      .environment(\.colorScheme, .dark)
  }
}
