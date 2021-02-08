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
            }
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
