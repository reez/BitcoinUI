//
//  FSMNBNReceiveView.swift
//
//
//  Created by Matthew Ramsden on 2/13/22.
//

import SwiftUI

struct FSMNBNReceiveView: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack(spacing: 20.0) {

        Spacer()

        VStack(spacing: 5.0) {
          Text("Share payment request")
            .bold()
            .font(.title2)
            .foregroundColor(Color(UIColor.label))
          Text("Only send bitcoin to this address.")
            .font(.title3)
            .foregroundColor(Color(UIColor.secondaryLabel))
        }
        .multilineTextAlignment(.center)
        .padding(.vertical, .wallet_grid_vertical_20())

        Image(systemName: "qrcode")
          .font(.system(size: 160))
          .padding(.vertical, .wallet_grid_vertical_20())

        VStack {
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

        VStack(spacing: 8.0) {
          Image(systemName: "chevron.up")
            .foregroundColor(Color(UIColor.secondaryLabel))
            .font(.footnote)
          Text("Details & Address Settings").font(.footnote)
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

struct FSMNBNReceiveView_Previews: PreviewProvider {
  static var previews: some View {
    FSMNBNReceiveView()
      .environment(\.colorScheme, .light)
    FSMNBNReceiveView()
      .environment(\.colorScheme, .dark)
  }
}
