//
//  Frame9801FeeView1.swift
//
//
//  Created by Matthew Ramsden on 2/18/22.
//

import SwiftUI

struct Frame9801FeeView1: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack {

        HStack {
          Text("Fee Overview")
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.label))
            .padding(.top, .wallet_grid_vertical_20())
            .padding(.top, .wallet_grid_vertical_20())
        }
        .padding(.horizontal, .wallet_grid_horizontal_10())
        .padding(.vertical, .wallet_grid_vertical_20())

        VStack {
          HStack {
            Text("Regular payments")
              .font(.callout)
              .bold()
            Spacer()
          }
          .padding(.horizontal, .wallet_grid_horizontal_10())
          Rectangle()
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .frame(height: 1.0)
            .foregroundColor(.gray)
          HStack {
            VStack(alignment: .leading) {
              Text("Send fee")
                .foregroundColor(Color(UIColor.label))
            }
            Spacer()
            VStack(alignment: .trailing) {
              Text("~5540 sat")
                .foregroundColor(Color(UIColor.label))
              Text("€-1.93")
                .font(.callout)
                .foregroundColor(.gray)
            }
          }
          .padding(.horizontal, .wallet_grid_horizontal_10())

          Rectangle()
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .frame(height: 1.0)
            .foregroundColor(.gray)
        }

        VStack {
          VStack {
            HStack {
              Text("Instant payments")
                .font(.callout)
                .bold()
              Spacer()
              Image(systemName: "bolt.fill")
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())

            Rectangle()
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .frame(height: 1.0)
              .foregroundColor(.gray)
          }

          VStack {
            HStack {
              VStack(alignment: .leading) {
                Text("Send fee")
                  .foregroundColor(Color(UIColor.label))
              }
              Spacer()
              VStack(alignment: .trailing) {
                Text("~-1 sat")
                  .foregroundColor(Color(UIColor.label))
                Text("€-0.0001")
                  .font(.callout)
                  .foregroundColor(.gray)
              }

            }
            .padding(.horizontal, .wallet_grid_horizontal_10())

            Rectangle()
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .frame(height: 1.0)
              .foregroundColor(.gray)
          }

          VStack {
            HStack {
              VStack(alignment: .leading) {
                Text("Send limit")
                  .foregroundColor(Color(UIColor.label))
              }
              Spacer()
              VStack(alignment: .trailing) {
                Text("50,000 sat")
                  .foregroundColor(Color(UIColor.label))
                Text("€20.00")
                  .font(.callout)
                  .foregroundColor(.gray)
              }
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            Rectangle()
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .frame(height: 1.0)
              .foregroundColor(.gray)
          }

          VStack {
            HStack {
              VStack(alignment: .leading) {
                Text("Receive limit")
                  .foregroundColor(Color(UIColor.label))
              }
              Spacer()
              VStack(alignment: .trailing) {
                Text("25,000 sat")
                  .foregroundColor(Color(UIColor.label))
                Text("€10.00")
                  .font(.callout)
                  .foregroundColor(.gray)
              }
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())

            Rectangle()
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .frame(height: 1.0)
              .foregroundColor(.gray)
          }

          VStack {
            HStack {
              VStack(alignment: .leading) {
                Text("Total limit")
                  .foregroundColor(Color(UIColor.label))
              }
              Spacer()
              VStack(alignment: .trailing) {
                Text("75,000 sat")
                  .foregroundColor(Color(UIColor.label))
                Text("€30.00")
                  .font(.callout)
                  .foregroundColor(.gray)
              }
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())

            Rectangle()
              .padding(.horizontal, .wallet_grid_horizontal_10())
              .frame(height: 1.0)
              .foregroundColor(.gray)
          }

          VStack {
            Button {
            } label: {
              HStack {
                Text("+")
                Text("Increase total limit")
              }
              .foregroundColor(.bitcoinOrange)
            }

          }
          .padding(.top)

          VStack {
            Button {
            } label: {
              VStack {
                HStack {
                  Text("Instant payments limits update as you send and recieve.")
                }
                .foregroundColor(Color(UIColor.secondaryLabel))
                .padding(.horizontal)
                HStack {
                  Text("Learn more")
                }
                .foregroundColor(.bitcoinOrange)
              }

            }

          }
          .padding()

        }
        .padding(.vertical)

      }
    }
    .edgesIgnoringSafeArea(.all)

  }
}

struct Frame9801FeeView1_Previews: PreviewProvider {
  static var previews: some View {
    Frame9801FeeView1()
      .environment(\.colorScheme, .light)
    Frame9801FeeView1()
      .environment(\.colorScheme, .dark)

  }
}
