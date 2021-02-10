//
//  MMSettingsView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMSetting: Identifiable {
    var id = UUID()
    let setting: String // rename
    let settingDetail: String // rename
}

struct MMSettingsViewRowView: View {
    let setting: MMSetting

    var body: some View {
        HStack {
            Image(systemName: "gearshape.fill")
            Text(setting.setting)
            Text(setting.settingDetail)

        }
        .padding(.vertical, .wallet_grid_vertical_20())
    }
}

struct MMSettingsView: View {
    let settings = [
        MMSetting(setting: "Set recovery email", settingDetail: ""),
        MMSetting(setting: "Change PIN", settingDetail: ""),
        MMSetting(setting: "Single bed", settingDetail: "Single bed"),
        MMSetting(setting: "Log out", settingDetail: ""),
    ]
    
    var body: some View {
        
        
        ZStack {
            Color(UIColor.systemBackground)
            
            NavigationView {
                
                VStack {
               
                    
                    List(settings) { setting in
                        NavigationLink(
                            destination: EmptyView()
                        ) {
                            MMSettingsViewRowView(setting: setting)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .navigationBarTitle("Settings")

                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct MMSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MMSettingsView()
                .environment(\.colorScheme, .light)
            MMSettingsView()
                .environment(\.colorScheme, .dark)
        }
    }
}
