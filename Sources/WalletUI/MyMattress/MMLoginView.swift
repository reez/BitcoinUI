//
//  MMLoginView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMLoginView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Login")
                    .foregroundColor(Color(UIColor.label))
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMLoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMLoginView()
                .environment(\.colorScheme, .light)
            MMLoginView()
                .environment(\.colorScheme, .dark)
        }
    }
}
