//
//  FSMBCCNOHomeView3.swift
//
//
//  Created by Matthew Ramsden on 2/13/22.
//

import SwiftUI

struct FSMBCCNOHomeView3: View {
  var body: some View {

    ZStack {
      Color(UIColor.systemBackground)

      VStack(spacing: 20.0) {

        VStack(spacing: 5.0) {
          Text("Instant payments send limit")
            .bold()
            .font(.title2)
            .foregroundColor(Color(UIColor.label))
          Text("You can send €1 at the moment.")
            .font(.title3)
            .foregroundColor(Color(UIColor.secondaryLabel))
        }
        .multilineTextAlignment(.center)
        .padding()

        Rectangle()
          .frame(height: 1.0)
          .foregroundColor(Color(UIColor.secondaryLabel))
          .padding(.horizontal)

        VStack(alignment: .leading) {
          Text("Increase the limit")
            .font(.body)
            .foregroundColor(Color(UIColor.label))
          HStack {
            Text("Set up a new instant payments channel. Involves a fee of €~2.45.")
              .font(.callout)
            Spacer()
            Image(systemName: "chevron.right")
              .foregroundColor(Color(UIColor.label))
          }
          .foregroundColor(Color(UIColor.secondaryLabel))
          .multilineTextAlignment(.leading)

        }
        .padding()

        Rectangle()
          .frame(height: 1.0)
          .foregroundColor(Color(UIColor.secondaryLabel))
          .padding(.horizontal)

        VStack(alignment: .leading) {
          Text("Receive instant payments")
            .font(.body)
            .foregroundColor(Color(UIColor.label))
          HStack {
            Text("For every incoming instant payment, you can then send the same amount.")
              .font(.callout)
            Spacer()
            Image(systemName: "chevron.right")
              .foregroundColor(Color(UIColor.label))
          }
          .foregroundColor(Color(UIColor.secondaryLabel))
          .multilineTextAlignment(.leading)

        }
        .padding()

        Spacer()

        VStack {
          Text(
            "This limit does not apply to on-chain payments, which is unlimited but incurs large fees."
          )
          .font(.caption)
          .multilineTextAlignment(.center)
          .foregroundColor(Color(UIColor.secondaryLabel))
          .padding()
        }

      }
      .padding(.top, 80.0)
      .padding(.bottom)

    }
    .edgesIgnoringSafeArea(.all)

  }
}

struct FSMBCCNOHomeView3_Previews: PreviewProvider {
  static var previews: some View {
    FSMBCCNOHomeView3()
      .environment(\.colorScheme, .light)
    FSMBCCNOHomeView3()
      .environment(\.colorScheme, .dark)

  }
}
