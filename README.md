# WalletUI

An iOS implementation of [Bitcoin Wallet UI Kit](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)), with example code implementations via Swift Previews.

*Both WalletUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

Bitcoin Wallet UI Kit:
- [Figma](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress))
- [GitHub](https://github.com/GBKS/bitcoin-design/blob/main/bitcoin-wallet-ui-kit.md)

Bitcoin Wallet UI Kit Hardware+Accessories:
- [Figma](https://www.figma.com/community/file/946807598525782935/Bitcoin-hardware-%26-accessories)

[Elements](#elements)<br>
[Basic Usage](#basic-usage)<br>
[Examples](#examples)<br>
[Requirements](#requirements)<br>
[Installation](#installation)<br>

## Elements

Side by side view of code interface and implementation example via Swift Previews.

### Colors

<p align='left'>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/colors-code-preview.png?raw=true' height='400' alt='colors-code-preview' />
    </a>
</p>

### Icons

<p align='left'>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/icons-code-preview.png?raw=true' height='400' alt='icons-code-preview' />
    </a>
</p>

## Basic Usage

Implementation examples for SwiftUI and UIKit.

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

### Icons

SwiftUI

```swift
BitcoinImage(named: "Github")
    .resizable()
    .aspectRatio(contentMode: .fit)
```

UIKit

```swift
let image = BitcoinUIImage(named: "Github")
let imageView = UIImageView(image: image)
imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
view.addSubview(imageView)
```

## Examples

Included are Swift Previews with code implemention examples of [Bitcoin Wallet UI Kit](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)) "screen mock-ups for mobile and desktop with some of the best practices already baked in".

<img src='https://github.com/reez/WalletUI/blob/main/Docs/copy-recovery-phrase.png?raw=true' height='400' alt='copy-recovery-phrase' /> <img src='https://github.com/reez/WalletUI/blob/main/Docs/send.png?raw=true' height='400' alt='send'/>  <img src='https://github.com/reez/WalletUI/blob/main/Docs/transaction.png?raw=true' height='400' alt='transaction' />

<img src="https://github.com/reez/WalletUI/blob/main/Docs/hardware-wallet-interaction.gif?raw=true" height="400" alt='hardware-wallet-interaction' />

## Requirements

WalletUI currently requires minimum deployment targets of iOS 14.

## Installation

You can add WalletUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/reez/WalletUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **WalletUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **WalletUI** and then depend on that framework in all of your targets.
