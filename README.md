![Bitcoin wallet UI kit cover image](/Docs/bitcoin-wallet-ui-kit-themes.png)
*Bitcoin Wallet UI Kit themes*

# WalletUI

An iOS implementation of [Bitcoin Wallet UI Kit](https://github.com/GBKS/bitcoin-wallet-ui-kit).

*Both WalletUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

[What's Included](#whats-included)<br>
[Basic Usage](#basic-usage)<br>
[Requirements](#requirements)<br>
[Installation](#installation)<br>


## What's Included

The design system in the kit includes the basics:

- Colors
- Icons

Example code implementations via Swift Previews:
- General UI elements (buttons, toggles...)
- Common navigation components (tab bar, side bar...)
- Screen templates

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

Additionally, there are components specific to Bitcoin wallets, such as:

- Balance display
- Transaction display
- Address input
- Fee selection

<img src="https://github.com/reez/WalletUI/blob/main/Docs/coldcard-import.png?raw=true" height="400" alt='coldcard-import' />


It also includes some detailed user flows, such as:

- Onboarding
- Creation and import of single and multi signature wallets
- Sending
- Receiving
- Settings
- Transaction management
- Coin mixing

<img src="https://github.com/reez/WalletUI/blob/main/Docs/hardware-wallet-interaction.gif?raw=true" height="400" alt='hardware-wallet-interaction' />


## Basic Usage

Implementation examples for SwiftUI and UIKit.

### Colors

SwiftUI
```swift
Text("Bitcoin Orange")
    .font(.caption)
    .foregroundColor(.bitcoinOrange)
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

## Requirements

WalletUI currently requires minimum deployment targets of iOS 14.

## Installation

You can add WalletUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/reez/WalletUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **WalletUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **WalletUI** and then depend on that framework in all of your targets.
