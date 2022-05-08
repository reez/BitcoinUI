//
//  CGFloat+Extension.swift
//
//
//  Created by Matthew Ramsden on 2/6/21.
//

import UIKit

extension CGFloat {

  // Choose spacing in increment of 2
  static func wallet_grid_2(_ n: Int) -> CGFloat {
    return CGFloat(n) * 2
  }

  // Choose spacing in increment of 10
  static func wallet_grid_10(_ n: Int) -> CGFloat {
    return CGFloat(n) * 10
  }

  // Choose horizontal spacing per Figma
  static func wallet_grid_horizontal_10() -> CGFloat {
    return CGFloat(1) * 10
  }

  // Choose vertical spacing per Figma
  static func wallet_grid_vertical_20() -> CGFloat {
    return CGFloat(1) * 20
  }

}
