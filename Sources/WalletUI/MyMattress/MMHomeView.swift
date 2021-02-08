//
//  MMHomeView.swift.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMHomeView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Home")
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMHomeView()
                .environment(\.colorScheme, .light)
            MMHomeView()
                .environment(\.colorScheme, .dark)
        }
    }
}
