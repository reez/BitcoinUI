//
//  SendView.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import SwiftUI

struct FeeView: View {
  let image: String
  let priority: String
  let arrival: String
  let bitcoinFee: String
  let fiatFee: String

  var body: some View {
    HStack {
      Image(systemName: image)
      VStack(alignment: .leading) {
        Text(priority)
          .foregroundColor(Color(UIColor.label))
        Text(arrival)
          .font(.callout)
          .foregroundColor(.gray)
      }
      Spacer()
      VStack(alignment: .trailing) {
        Text(bitcoinFee)
          .foregroundColor(Color(UIColor.label))
        Text(fiatFee)
          .font(.callout)
          .foregroundColor(.gray)
      }
    }
    .padding(.horizontal, .wallet_grid_horizontal_10())
    .padding(.vertical, .wallet_grid_vertical_20())

  }
}

struct FeesView: View {
  var body: some View {

    VStack {

      FeeView(
        image: "circle",
        priority: "High",
        arrival: "10 - 20 minutes",
        bitcoinFee: "₿ 0.00002000",
        fiatFee: "€0.20"
      )

      Rectangle()
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .frame(height: 1.0)
        .foregroundColor(.gray)

      FeeView(
        image: "circle.fill",
        priority: "Medium",
        arrival: "20 - 60 minutes",
        bitcoinFee: "₿ 0.00003000",
        fiatFee: "€0.30"
      )

      Rectangle()
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .frame(height: 1.0)
        .foregroundColor(.gray)

      FeeView(
        image: "circle",
        priority: "Low",
        arrival: "1 - 2 hours",
        bitcoinFee: "₿ 0.00004000",
        fiatFee: "€0.40"
      )

      Rectangle()
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .frame(height: 1.0)
        .foregroundColor(.gray)

      HStack {
        Image(systemName: "circle")

        VStack(alignment: .leading) {
          Text("Custom")
            .foregroundColor(Color(UIColor.label))
        }

        Spacer()

        BitcoinImage(named: "Caret right big")
      }
      .padding(.horizontal, .wallet_grid_horizontal_10())
      .padding(.vertical, .wallet_grid_vertical_20())

    }

  }
}

struct SendView: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack {

        HStack {
          Text("Adjust the fee")
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.label))
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.top, .wallet_grid_vertical_20())
          Spacer()
        }
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .padding(.vertical, .wallet_grid_vertical_20())

        HStack {
          Text("Priority & arrival time")
            .font(.callout)
          Spacer()
          Text("Fee")
            .font(.callout)
        }
        .padding(.horizontal, .wallet_grid_horizontal_10())

        Rectangle()
          .padding(.horizontal, .wallet_grid_horizontal_10())
          .frame(height: 1.0)
          .foregroundColor(.gray)

        FeesView()

        Button(action: {}) {
          Text("Continue")
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.bitcoinOrange)
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())

        }

        Spacer()

      }
    }
    .edgesIgnoringSafeArea(.all)

  }
}

struct SendView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SendView()
        .environment(\.colorScheme, .light)
      SendView()
        .environment(\.colorScheme, .dark)
    }

  }
}
