# WalletUI

An iOS implementation of [Bitcoin Wallet UI Kit](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)), with example code implementations via Swift Previews.

## Basic Usage

### Colors

SwiftUI
```swift
Text("Neutral 5")
    .font(.caption)
    .foregroundColor(Color(UIColor.bitcoinNeutral5))
    .multilineTextAlignment(.center)
```

UIKit

```swift
let label = UILabel()
label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
label.text = "Wallet"
label.textColor = .bitcoinOrange
```

## Requirements

WalletUI currently requires minimum deployment targets of iOS 14.

## Installation

You can add WalletUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/reez/WalletUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **WalletUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **WalletUI** and then depend on that framework in all of your targets.
