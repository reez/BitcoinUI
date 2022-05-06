//
//  Frame9798AmountView1.swift
//
//
//  Created by Matthew Ramsden on 2/18/22.
//

import SwiftUI

struct Frame9798AmountView1: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack {

        Spacer()

        Text("Amount to send")
          .font(.title2)
          .fontWeight(.semibold)
          .foregroundColor(Color(UIColor.label))
          .padding()

        VStack {
          Text("₿ 12 500 sat")
            .font(.title2)
          Text("€ 5,00")
            .font(.title3)
            .foregroundColor(
              Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
        }
        .padding()

        HStack(spacing: 8.0) {
          Text("Fee")
          Text("₿ ~ 1 sat")
            .foregroundColor(Color(UIColor.label))
          Image(systemName: "bolt.fill")
            .foregroundColor(Color(UIColor.label))
        }
        .foregroundColor(Color(UIColor.secondaryLabel))
        .font(.footnote)
        .padding()

        Spacer()

        VStack(alignment: .center) {
          HStack {
            NumberButtonView(
              number: "1", letters: "aaa", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "2", letters: "abc", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "3", letters: "def", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
          }
          .padding(.vertical)
          .frame(maxWidth: .infinity)

          HStack {
            NumberButtonView(
              number: "4", letters: "ghi", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "5", letters: "jkl", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "6", letters: "mno", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
          }
          .padding(.vertical)
          .frame(maxWidth: .infinity)

          HStack {
            NumberButtonView(
              number: "7", letters: "pqrs", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "8", letters: "tuv", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "9", letters: "wxyz", numberIsHidden: false, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
          }
          .padding(.vertical)
          .frame(maxWidth: .infinity)

          HStack {
            NumberButtonView(
              number: "1", letters: "aaa", numberIsHidden: true, letterIsHidden: true
            )
            .frame(maxWidth: .infinity)
            Spacer()
            NumberButtonView(
              number: "0", letters: "aaa", numberIsHidden: false, letterIsHidden: true
            )
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

        Button(action: {}) {
          Text("Continue")
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.bitcoinOrange)
        }

      }
      .padding(.horizontal, .wallet_grid_10(4))
      .padding(.vertical, .wallet_grid_10(4))

    }
    .edgesIgnoringSafeArea(.all)

  }
}

struct Frame9798AmountView1_Previews: PreviewProvider {
  static var previews: some View {
    Frame9798AmountView1()
      .environment(\.colorScheme, .light)
    Frame9798AmountView1()
      .environment(\.colorScheme, .dark)
  }
}
