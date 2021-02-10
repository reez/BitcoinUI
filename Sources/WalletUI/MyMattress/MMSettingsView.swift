//
//  MMSettingsView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMSetting: Identifiable {
    var id = UUID()
    let color: Color
    let imageName: String
    let setting: String // rename
    let settingDetail: String // rename
}

struct MMSettingsViewRowView: View {
    let setting: MMSetting

    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(setting.color)
                BitcoinImage(named: setting.imageName)
                    .foregroundColor(Color(UIColor.systemBackground))
                    .font(.footnote)
            }
            VStack {
                Text(setting.setting)
                Text(setting.settingDetail)
            }

        }
        .padding(.vertical, .wallet_grid_vertical_20())
    }
}

struct MMSettingsView: View {
    let settings = [
        MMSetting(color: .orange, imageName: "paperplane-vector", setting: "Set recovery email", settingDetail: ""),
        MMSetting(color: .green, imageName: "dots-group", setting: "Change PIN", settingDetail: ""),
        MMSetting(color: .blue, imageName: "singlebedsettings-group", setting: "Security mode", settingDetail: "Single bed"),
        MMSetting(color: .purple, imageName: "x-group", setting: "Log out", settingDetail: ""),
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
