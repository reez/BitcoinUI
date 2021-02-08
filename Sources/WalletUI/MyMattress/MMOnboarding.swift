//
//  MMOnboarding.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMOnboardingView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)

            VStack {
                Text("Onboarding")
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMOnboardingView()
                .environment(\.colorScheme, .light)
            MMOnboardingView()
                .environment(\.colorScheme, .dark)
        }
    }
}
