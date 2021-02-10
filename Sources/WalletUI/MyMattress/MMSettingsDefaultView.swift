//
//  MMSettingsView.swift
//  
//
//  Created by Matthew Ramsden on 2/8/21.
//

import SwiftUI

#if canImport(UIKit)

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
                            destination: MMSettingsSummaryView()
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
            .accentColor(Color(UIColor.label))
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMSettingsSummaryView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Your security mode is Single Bed")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Your funds are secured by a single key, which is backed up to your cloud storage provider.")
                        .font(.title3)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                }
                
                Button(action: {}) {
                    Text("Export backup")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(UIColor.label))
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                }
                .padding(.vertical)
                
                Button(action: {}) {
                    
                    HStack {
                        
                        ZStack {
                            Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                            BitcoinImage(named: "switchtriple-group")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .font(.footnote)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Switch to a triple bed")
                                .font(.body)
                                .foregroundColor(Color(UIColor.label))
                            Text("Export backup")
                                .font(.callout)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.all)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                    )
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)                
                
                Spacer()
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MMSettingsDefaultDoubleView: View {
    let settings = [
        MMSetting(backup: "", color: .orange, imageName: "paperplane-vector", title: "Set recovery email", detail: nil),
        MMSetting(backup: "", color: .green, imageName: "dots-group", title: "Change PIN", detail: nil),
        MMSetting(backup: "Multiple keys", color: .blue, imageName: "singlebedsettings-group", title: "Security mode", detail: "Triple bed"),
        MMSetting(backup: "", color: .purple, imageName: "x-group", title: "Log out", detail: nil),
    ]
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(UIColor.bitcoinMyMattress)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    ForEach(settings) { setting in
                        NavigationLink(
                            destination: MMSettingsSummaryDoubleView()
                        ) {
                            VStack {
                                Rectangle()
                                    .frame(height: 1.0)
                                MMSettingsDoubleViewRowView(setting: setting)
                            }
                        }
                        .navigationBarTitle("Settings")
                    }
                    
                    Spacer()
                    
                }
                .padding(.horizontal, .wallet_grid_horizontal_10())
                .padding(.vertical, .wallet_grid_vertical_20())
                
            }
            
        }
        .accentColor(Color(UIColor.label))
        
    }
}

struct MMSettingsDoubleViewRowView: View {
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
                    // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                    .foregroundColor(Color(UIColor.white))
                
                if let d = setting.detail {
                    Text(d)
                        .font(.callout)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                }
                
            }
            
            Spacer()
            
            Text(setting.backup)
                .font(.footnote)
                // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                .foregroundColor(Color(UIColor.lightGray))
            
            Image(systemName: "chevron.right")
                .font(.footnote)
                // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                .foregroundColor(Color(UIColor.lightGray))
            
        }
        .padding(.vertical, .wallet_grid_10(1))
        
    }
}

struct MMSettingsSummaryDoubleView: View {
    
    var body: some View {
        
        ZStack {
            Color(UIColor.bitcoinMyMattress)
            
            VStack(spacing: 20.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                    // This icon should be triple bed on Figma I think
                    BitcoinImage(named: "singlebedsettings-group")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.footnote)
                }
                
                VStack(spacing: 5.0) {
                    Text("Your security mode is Triple Bed")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .multilineTextAlignment(.center)
                    
                    Text("Your funds are secured by 3 keys.")
                        .font(.title3)
                        // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.lightGray))
                        .multilineTextAlignment(.center)
                }
                
                Button(action: {}) {
                    Text("Export key backup")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.black))
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                }
                .padding(.top)
                
                Button(action: {}) {
                    Text("Export wallet backup")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.black))
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(
                                    Color(UIColor.secondaryLabel),
                                    lineWidth: 1
                                )
                        )
                }
                
                Button(action: {}) {
                    Text("Emergency recovery")
                        .padding(.horizontal, .wallet_grid_horizontal_10())
                        .padding(.vertical, 12.0)
                        .frame(maxWidth: .infinity)
                        // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                        .foregroundColor(Color(UIColor.black))
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.secondaryLabel), lineWidth: 1)
                        )
                }
                
                Button(action: {}) {
                    
                    HStack {
                        
                        ZStack {
                            Circle().frame(width: 50.0, height: 50.0).foregroundColor(.blue)
                            BitcoinImage(named: "switchtriple-group")
                                // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                                .foregroundColor(Color(UIColor.white))                                .font(.footnote)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Switch to a single bed")
                                .font(.body)
                                // This should be label but because we are using set color for light/dark double bed it needs to be gray atm
                                .foregroundColor(Color(UIColor.white))
                            Text("For more convenience")
                                .font(.callout)
                                // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                                .foregroundColor(Color(UIColor.lightGray))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.all)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            // This should be secondaryLabel but because we are using set color for light/dark double bed it needs to be gray atm
                            .stroke(Color(UIColor.white), lineWidth: 1)
                    )
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                
                Spacer()
                
            }
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            .padding(.horizontal, .wallet_grid_horizontal_10())
            .padding(.vertical, .wallet_grid_vertical_20())
            
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
            MMSettingsSummaryView()
                .environment(\.colorScheme, .light)
            MMSettingsSummaryView()
                .environment(\.colorScheme, .dark)
            MMSettingsDefaultDoubleView()
                .environment(\.colorScheme, .light)
            MMSettingsDefaultDoubleView()
                .environment(\.colorScheme, .dark)
            MMSettingsSummaryDoubleView()
                .environment(\.colorScheme, .light)
            MMSettingsSummaryDoubleView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
