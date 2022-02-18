//
//  Frame9798SendView.swift
//
//
//  Created by Matthew Ramsden on 2/18/22.
//

import SwiftUI

struct Frame9798SendView: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack {

        HStack {
          Text("Set up an instant payments channel")
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.label))
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.leading, .wallet_grid_vertical_20())
            .padding(.trailing, .wallet_grid_vertical_20())
            .padding(.leading, .wallet_grid_vertical_20())
            .padding(.trailing, .wallet_grid_vertical_20())

        }
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .padding(.vertical, .wallet_grid_vertical_20())

        Button(action: {}) {
          VStack(alignment: .leading) {
            VStack(alignment: .leading) {
              Text("Address")
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .foregroundColor(Color(UIColor.label))
                .font(.footnote)
              VStack(alignment: .leading) {
                HStack {
                  Text("Enter address...")
                    .foregroundColor(Color(UIColor.secondaryLabel))

                  Spacer()
                  Image(systemName: "qrcode")
                  Image(systemName: "person.fill")

                }

              }
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .padding(.vertical, .wallet_grid_vertical_20())
              .frame(maxWidth: .infinity)
              .foregroundColor(Color(UIColor.label))
              .border(Color.bitcoinNeutral4)
              .padding(.horizontal, .wallet_grid_horizontal_10())
            }

            VStack(alignment: .leading) {
              Text("Amount")
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .foregroundColor(Color(UIColor.label))
                .font(.footnote)
              VStack(alignment: .leading) {
                HStack {
                  Text("Enter amount...")
                    .foregroundColor(Color(UIColor.secondaryLabel))

                  Spacer()
                  Text("Max".uppercased())
                    .font(.caption)
                    .padding(.all, .wallet_grid_2(2))
                    .foregroundColor(.white)
                    .background(Color(UIColor.secondaryLabel))
                    .cornerRadius(2)

                  HStack(spacing: 1.0) {
                    Text("Bitcoin")
                    Image(systemName: "chevron.down")
                  }
                  .font(.caption)

                }

              }
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .padding(.vertical, .wallet_grid_vertical_20())
              .frame(maxWidth: .infinity)
              .foregroundColor(Color(UIColor.label))
              .border(Color.bitcoinNeutral4)
              .padding(.horizontal, .wallet_grid_horizontal_10())
            }

          }

        }

        Button(action: {}) {
          HStack {
            Text("Fee Priority")
            Spacer()
            HStack {
              Text("Low ~10 min")
              Image(systemName: "chevron.right")
            }

          }
          .padding(.horizontal, .wallet_grid_horizontal_10())
          .padding(.vertical, .wallet_grid_vertical_20())
          .frame(maxWidth: .infinity)
          .foregroundColor(Color(UIColor.label))
          .border(Color.bitcoinNeutral4)
          .padding(.horizontal, .wallet_grid_horizontal_10())
          .padding(.vertical, .wallet_grid_vertical_20())

        }

      }

    }
    .edgesIgnoringSafeArea(.all)

  }
}

struct Frame9798SendView_Previews: PreviewProvider {
  static var previews: some View {
    Frame9798SendView()
      .environment(\.colorScheme, .light)
    Frame9798SendView()
      .environment(\.colorScheme, .dark)
  }
}
