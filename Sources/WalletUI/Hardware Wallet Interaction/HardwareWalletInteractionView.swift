//
//  HardwareWalletInteractionView.swift
//  
//
//  Created by Matthew Ramsden on 2/5/21.
//

import SwiftUI

#if canImport(UIKit)

struct HardwareWallet: Identifiable {
    var id = UUID()
    let name: String
}

struct ImportOptionsViewRowView: View {
    let wallet: HardwareWallet
    
    var body: some View {
        HStack {
            Image(systemName: "gearshape.fill")
            Text(wallet.name)
        }
        .padding(.vertical)
    }
}

struct ImportOptionsView: View {
    let wallets = [
        HardwareWallet(name: "Ledger"),
        HardwareWallet(name: "Trezor")
    ]
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("Which hardware wallet do you want to connect to?")
                    .bold()
                    .font(.title2)
                    .padding(.horizontal, 15.0)
                
                List(wallets) { wallet in
                    NavigationLink(
                        destination: ValidateRecoveryPhrase1View(wallet: wallet)
                    ) {
                        ImportOptionsViewRowView(wallet: wallet)
                    }
                }
                .listStyle(PlainListStyle())
                
            }
            
        }
        .accentColor(Color(UIColor.label))
        
    }
}

struct ValidateRecoveryPhrase1View: View {
    @State var show = false
    var wallet: HardwareWallet
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(alignment: .leading, spacing: 8.0) {
                
                ProgressView()
                    .padding(.top)
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .leading)
                
                Text("Looking For \(wallet.name)...")
                    .bold()
                    .font(.title2)
                    .padding(.top, 20.0)
                
                Text(
                    "Make sure to write it down as shown here. You have to verify this later."
                )
                .foregroundColor(Color(UIColor.bitcoinNeutral7))
                .font(.title3)
                
                NavigationLink(
                    destination: ValidateRecoveryPhrase2View(),
                    isActive: $show,
                    label: {
                        EmptyView()
                    }
                )
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.show.toggle()
                    }
                }
                
                Spacer()
                
            }
            .padding(.all, 10.0)
            .padding(.top, 70.0)
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ValidateRecoveryPhrase2View: View {
    @State var show = false
    
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(alignment: .leading, spacing: 8.0) {
                
                ProgressView()
                    .padding(.top)
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(x: 2.0, y: 2.0, anchor: .leading)
                
                Text("Verify your address on your hardware wallet")
                    .bold()
                    .font(.title2)
                    .padding(.top, 20.0)
                
                Text(
                    "Please verify the address on your hardware wallet. We currently only support the Ledger Nano S."
                )
                .foregroundColor(Color(UIColor.bitcoinNeutral7))
                .font(.title3)

                NavigationLink(
                    destination: WalletBackupSuccessView(),
                    isActive: $show,
                    label: {
                        EmptyView()
                    }
                )
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.show.toggle()
                    }
                }
                
                Spacer()
                
            }
            .padding(.all, 8.0)
            .padding(.top, 70.0)
            .multilineTextAlignment(.leading)
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct WalletBackupSuccessView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack(alignment: .leading, spacing: 8.0) {
                
                ZStack {
                    Circle().frame(width: 50.0, height: 50.0).foregroundColor(.green)
                    Image(systemName: "checkmark")
                }
                .padding(.top, 30.0)

                Text("Your Ledger is registered")
                    .bold()
                    .font(.title2)
                    .padding(.top, 10.0)
                
                Text(
                    "You can now use it to sign transactions and set up multisignature wallets.."
                )
                .foregroundColor(Color(UIColor.bitcoinNeutral7))
                .font(.title3)
                .padding(.bottom, 15.0)

                Button(action: {}) {
                    Text("Continue")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color(UIColor.bitcoinOrange))
                }
                
                Spacer()
                
            }
            .padding(.all, 10.0)
            .padding(.top, 70.0)
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}


struct HardwareWalletView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImportOptionsView()
                .environment(\.colorScheme, .light)
            ImportOptionsView()
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif
