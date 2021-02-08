//
//  MMTransactionsView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMTransactionsView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Transactions")
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMTransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMTransactionsView()
                .environment(\.colorScheme, .light)
            MMTransactionsView()
                .environment(\.colorScheme, .dark)
        }
    }
}
