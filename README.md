![cover image](/Docs/bitcoin-wallet-ui-kit-themes.png)

# WalletUI

WalletUI is an iOS implementation of [Bitcoin Wallet UI Kit](https://github.com/GBKS/bitcoin-wallet-ui-kit).

*Both WalletUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

[What's Included](#whats-included)<br>
[Basic Usage](#basic-usage)<br>
[Requirements](#requirements)<br>
[Installation](#installation)<br>


## What's Included

The design system in the kit includes the basics:

- Colors (Light+Dark Mode)
- Icons
- Button styles (SwiftUI, Light+Dark Mode)
- Text styles (SwiftUI, Light+Dark Mode)

Example code implementations via Swift Previews:
- General UI elements (buttons, toggles...)
- Common navigation components (tab bar, side bar...)
- Screen templates

### Colors (Light+Dark Mode)

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

Additionally, there are example code implementations via Swift Previews specific to Bitcoin wallets, such as:

- Balance display
- Transaction display
- Address input
- Fee selection

<img src="https://github.com/reez/WalletUI/blob/main/Docs/coldcard-import.png?raw=true" height="400" alt='coldcard-import' />


It also includes some example code implementations via Swift Previews of detailed user flows, such as:

- Onboarding
- Creation and import of single and multi signature wallets
- Sending
- Receiving
- Settings
- Transaction management
- Coin mixing

<img src="https://github.com/reez/WalletUI/blob/main/Docs/hardware-wallet-interaction.gif?raw=true" height="800" width="384" alt='hardware-wallet-interaction' />


## Basic Usage

### Colors (Light+Dark Mode)

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

### Button Styles

Five button styles are implemented in SwiftUI; BitcoinCapsuleFilled, BitcoinFilled, BitcoinCapsuleOutlined, BitcoinOutlined, and BitcoinPlain.
They have a number of optional parameters, including: width, height, cornerRadius, tintColor, textColor, disabledFillColor and disabledTextColor depending on the type.

<img src="https://github.com/reez/WalletUI/blob/main/Docs/button-dark.png?raw=true" height="400" alt='button-dark' />


SwiftUI

```swift    
Button("Capsule filled button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinCapsuleFilled())
            
Button("Filled button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinFilled())

Button("Capsule outlined button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinCapsuleOutlined())

Button("Outlined button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinOutlined())

Button("Plain button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinPlain())
```

### Text Styles

Ten text styles are implemented in SwiftUI; BitcoinTitle1 - BitcoinTitle5 and BitcoinBody1 - BitcoinBody5

SwiftUI

```swift
Text("Title")
    .textStyle(BitcoinTitle1())

Text("Body")
    .textStyle(BitcoinBody1())
```

## Requirements

WalletUI currently requires minimum deployment targets of iOS 15.

## Installation

You can add WalletUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Add Packages…**
  2. Enter "https://github.com/reez/WalletUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **WalletUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **WalletUI** and then depend on that framework in all of your targets.
