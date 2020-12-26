//
//  Icons.swift
//  
//
//  Created by Matthew Ramsden on 12/26/20.
//

import Foundation
import SwiftUI

#if canImport(UIKit)

public func BitcoinImage(named: String) -> Image {
    return Image(named, bundle: Bundle.module)
}

public func BitcoinUIImage(named: String) -> UIImage {
    return UIImage(named: named, in: .module, compatibleWith: nil)!
}

#endif
