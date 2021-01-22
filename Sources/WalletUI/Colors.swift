//
//  Colors.swift
//
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

#if canImport(UIKit)

/// Extend UIColor to add WalletUI specific colors

extension UIColor {
    
    public static var bitcoinOrange: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.9686274528503418, green: 0.5764706134796143,
                    blue: 0.10196078568696976, alpha: 1)
            } else {
                return UIColor(
                    red: 0.9686274528503418, green: 0.5764706134796143,
                    blue: 0.10196078568696976, alpha: 1)
            }
        }
    }
    
    public static var bitcoinRed: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.9215686321258545, green: 0.34117648005485535,
                    blue: 0.34117648005485535, alpha: 1)
            } else {
                return UIColor(
                    red: 0.9215686321258545, green: 0.34117648005485535,
                    blue: 0.34117648005485535, alpha: 1)
            }
        }
    }
    
    public static var bitcoinGreen: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.15294118225574493, green: 0.6823529601097107,
                    blue: 0.3764705955982208, alpha: 1)
            } else {
                return UIColor(
                    red: 0.15294118225574493, green: 0.6823529601097107,
                    blue: 0.3764705955982208, alpha: 1)
            }
        }
    }
    
    public static var bitcoinBlue: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.1764705926179886, green: 0.6117647290229797,
                    blue: 0.8588235378265381, alpha: 1)
            } else {
                return UIColor(
                    red: 0.1764705926179886, green: 0.6117647290229797,
                    blue: 0.8588235378265381, alpha: 1)
            }
        }
    }
    
    public static var bitcoinPurple: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.7333333492279053, green: 0.41960784792900085,
                    blue: 0.8509804010391235, alpha: 1)
            } else {
                return UIColor(
                    red: 0.7333333492279053, green: 0.41960784792900085,
                    blue: 0.8509804010391235, alpha: 1)
            }
        }
    }
    
    public static var bitcoinWhite: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral1: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.9725490212440491, green: 0.9725490212440491,
                    blue: 0.9725490212440491, alpha: 1)
            } else {
                return UIColor(
                    red: 0.9725490212440491, green: 0.9725490212440491,
                    blue: 0.9725490212440491, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral2: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.95686274766922, green: 0.95686274766922, blue: 0.95686274766922,
                    alpha: 1)
            } else {
                return UIColor(
                    red: 0.95686274766922, green: 0.95686274766922, blue: 0.95686274766922,
                    alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral3: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.929411768913269, green: 0.929411768913269, blue: 0.929411768913269,
                    alpha: 1)
            } else {
                return UIColor(
                    red: 0.929411768913269, green: 0.929411768913269, blue: 0.929411768913269,
                    alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral4: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.8705882430076599, green: 0.8705882430076599,
                    blue: 0.8705882430076599, alpha: 1)
            } else {
                return UIColor(
                    red: 0.8705882430076599, green: 0.8705882430076599,
                    blue: 0.8705882430076599, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral5: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.7333333492279053, green: 0.7333333492279053,
                    blue: 0.7333333492279053, alpha: 1)
            } else {
                return UIColor(
                    red: 0.7333333492279053, green: 0.7333333492279053,
                    blue: 0.7333333492279053, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral6: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.6000000238418579, green: 0.6000000238418579,
                    blue: 0.6000000238418579, alpha: 1)
            } else {
                return UIColor(
                    red: 0.6000000238418579, green: 0.6000000238418579,
                    blue: 0.6000000238418579, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral7: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.46666666865348816, green: 0.46666666865348816,
                    blue: 0.46666666865348816, alpha: 1)
            } else {
                return UIColor(
                    red: 0.46666666865348816, green: 0.46666666865348816,
                    blue: 0.46666666865348816, alpha: 1)
            }
        }
    }
    
    public static var bitcoinNeutral8: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(
                    red: 0.250980406999588, green: 0.250980406999588, blue: 0.250980406999588,
                    alpha: 1)
            } else {
                return UIColor(
                    red: 0.250980406999588, green: 0.250980406999588, blue: 0.250980406999588,
                    alpha: 1)
            }
        }
    }
    
    public static var bitcoinBlack: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            } else {
                return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
    }
    
}

struct ColorView: View {
    let color: Color
    let colorLabel: String
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
            Text(colorLabel)
                .font(.caption)
                .foregroundColor(Color(UIColor.bitcoinNeutral5))
                .multilineTextAlignment(.center)
        }
    }
    
}

struct ColorsView: View {
    var body: some View {
        
        ZStack {
            Color(UIColor.systemBackground)
            
            VStack {
                
                Text("Colors")
                    .underline()
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.top, 40.0)
                
                HStack {
                    ColorView(color: Color(UIColor.bitcoinWhite), colorLabel: "White")
                    ColorView(color: Color(UIColor.bitcoinNeutral1), colorLabel: "Neutral1")
                    ColorView(color: Color(UIColor.bitcoinNeutral2), colorLabel: "Neutral2")
                    ColorView(color: Color(UIColor.bitcoinNeutral3), colorLabel: "Neutral3")
                    ColorView(color: Color(UIColor.bitcoinNeutral4), colorLabel: "Neutral4")
                }
                .padding()
                
                HStack {
                    ColorView(color: Color(UIColor.bitcoinNeutral5), colorLabel: "Neutral5")
                    ColorView(color: Color(UIColor.bitcoinNeutral6), colorLabel: "Neutral6")
                    ColorView(color: Color(UIColor.bitcoinNeutral7), colorLabel: "Neutral7")
                    ColorView(color: Color(UIColor.bitcoinNeutral8), colorLabel: "Neutral8")
                    ColorView(color: Color(UIColor.bitcoinBlack), colorLabel: "Black")
                }
                .padding()
                
                HStack {
                    ColorView(color: Color(UIColor.bitcoinOrange), colorLabel: "Orange")
                    ColorView(color: Color(UIColor.bitcoinRed), colorLabel: "Red")
                    ColorView(color: Color(UIColor.bitcoinGreen), colorLabel: "Green")
                    ColorView(color: Color(UIColor.bitcoinBlue), colorLabel: "Blue")
                    ColorView(color: Color(UIColor.bitcoinPurple), colorLabel: "Purple")
                }
                .padding()
                
            }
            .padding()
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorsView()
                .environment(\.colorScheme, .light)
            ColorsView()
                .environment(\.colorScheme, .dark)
            
        }
    }
}

#endif
