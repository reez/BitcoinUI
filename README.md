# WalletUI

An iOS implementation of Bitcoin Wallet UI Kit, with example code implementations via Swift Previews.

*Both WalletUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

[Elements](#elements)<br>
[Basic Usage](#basic-usage)<br>
[Examples](#examples)<br>
[References](#references)<br>
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

### Hardware Illustrations

<p align='left'>
    <a href='https://github.com/GBKS/bitcoin-hardware-illustrations'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/hardware-illustrations-code-preview.png?raw=true' height='400' alt='hardware-illustrations-code-preview' />
    </a>
</p>

### Icons Filled

<p align='left'>
    <a href='https://github.com/BitcoinDesign/Bitcoin-Icons'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/icons-filled-code-preview.png?raw=true' height='400' alt='icons-filled-code-preview' />
    </a>
</p>

### Icons Outline

<p align='left'>
    <a href='https://github.com/BitcoinDesign/Bitcoin-Icons'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/icons-outline-code-preview.png?raw=true' height='400' alt='icons-outline-code-preview' />
    </a>
</p>

## Basic Usage

Implementation examples for SwiftUI and UIKit.

### Colors

SwiftUI
```swift
Text("Bitcoin Orange")
    .font(.caption)
    .foregroundColor(Color(UIColor.bitcoinOrange))
    .multilineTextAlignment(.center)
```

UIKit

```swift
let label = UILabel()
label.frame = CGRect(x: 200, y: 200, width: 200, height: 20)
label.text = "Bitcoin Orange"
label.textColor = .bitcoinOrange
```

### Icons

SwiftUI

```swift
BitcoinImage(named: "coldcard")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(height: 75.0)
```

UIKit

```swift
let image = BitcoinUIImage(named: "coldcard")
let imageView = UIImageView(image: image)
imageView.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
view.addSubview(imageView)
```

## Examples

Included are Swift Previews with code implemention examples of Bitcoin Wallet UI Kit (example: Hardware Wallet Interaction)

<img src="https://github.com/reez/WalletUI/blob/main/Docs/hardware-wallet-interaction.gif?raw=true" height="400" alt='hardware-wallet-interaction' />

## References

Bitcoin Wallet UI Kit:
- [Figma](https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress))
- [GitHub](https://github.com/GBKS/bitcoin-design/blob/main/bitcoin-wallet-ui-kit.md)

Bitcoin Hardware Illustrations:
- [Figma](https://www.figma.com/community/file/946807598525782935/Bitcoin-hardware-%26-accessories)
- [GitHub](https://github.com/GBKS/bitcoin-hardware-illustrations)

Bitcoin Icons:
- [Figma](https://www.figma.com/community/file/948545404023677970/Bitcoin-icon-set)
- [GitHub](https://github.com/BitcoinDesign/Bitcoin-Icons)
- [Website](https://bitcoinicons.com)

## Requirements

WalletUI currently requires minimum deployment targets of iOS 14.

## Installation

You can add WalletUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/reez/WalletUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **WalletUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **WalletUI** and then depend on that framework in all of your targets.
