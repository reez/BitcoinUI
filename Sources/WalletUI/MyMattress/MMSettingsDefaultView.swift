//
//  MMSettingsView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

struct MMSetting: Identifiable {
    var id = UUID()
    let backup: String
    let color: Color
    let imageName: String
    let title: String
    let detail: String?
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
            VStack(alignment: .leading) {
                Text(setting.title)
                    .font(.body)
                    .foregroundColor(Color(UIColor.label))
                
                if let d = setting.detail {
                    Text(d)
                        .font(.callout)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
            }
            Spacer()
            Text(setting.backup)
                .font(.footnote)
                .foregroundColor(Color(UIColor.secondaryLabel))
            
        }
        .padding(.vertical, .wallet_grid_vertical_20())
    }
}

struct MMSettingsDefaultView: View {
    let settings = [
        MMSetting(backup: "", color: .orange, imageName: "paperplane-vector", title: "Set recovery email", detail: nil),
        MMSetting(backup: "", color: .green, imageName: "dots-group", title: "Change PIN", detail: nil),
        MMSetting(backup: "Cloud backup", color: .blue, imageName: "singlebedsettings-group", title: "Security mode", detail: "Single bed"),
        MMSetting(backup: "", color: .purple, imageName: "x-group", title: "Log out", detail: nil),
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
            MMSettingsDefaultView()
                .environment(\.colorScheme, .light)
            MMSettingsDefaultView()
                .environment(\.colorScheme, .dark)
        }
    }
}
