![cover image](/Docs/bitcoin-wallet-ui-kit-themes.png)

# WalletUI

WalletUI is an iOS implementation of [Bitcoin Wallet UI Kit](https://github.com/GBKS/bitcoin-wallet-ui-kit).

*Both WalletUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

[What's Included](#whats-included)<br>
[Basic Usage](#basic-usage)<br>
[Requirements](#requirements)<br>
[Installation](#installation)<br>

## What's Included

The design system in the kit includes:

- Colors  
- Button styles
- Text styles
- Icons

<p align='left'>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/colors-dark.png?raw=true' height='200' alt='colors-code-preview' />
    </a>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/button-dark.png?raw=true' height='200' alt='buttons-code-preview' />
    </a>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/text-dark.png?raw=true' height='200' alt='text-code-preview' />
    </a>
    <a href='https://github.com/GBKS/bitcoin-hardware-illustrations'>
        <img src='https://github.com/reez/WalletUI/blob/main/Docs/hardware-dark.png?raw=true' height='200' alt='hardware-illustrations-code-preview' />
    </a>
</p>

## Basic Usage

### Colors

*SwiftUI*

```swift
Text("Bitcoin Orange")
    .font(.caption)
    .foregroundColor(.bitcoinOrange)
    .multilineTextAlignment(.center)
```

*UIKit*

```swift
let label = UILabel()
label.frame = CGRect(x: 200, y: 200, width: 200, height: 20)
label.text = "Bitcoin Orange"
label.textColor = .bitcoinOrange
```

### Button Styles

Three button styles (with a number of optional parameters) are implemented in SwiftUI:
 
- BitcoinFilled 

- BitcoinOutlined 

- BitcoinPlain

*SwiftUI*

```swift    
Button("Filled button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinFilled())
```

### Text Styles

Ten text styles are implemented in SwiftUI: 

- BitcoinTitle1 - BitcoinTitle5

- BitcoinBody1 - BitcoinBody5

*SwiftUI*

```swift
Text("Title")
    .textStyle(BitcoinTitle1())
```

### Icons

*SwiftUI*

```swift
BitcoinImage(named: "coldcard")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(height: 75.0)
```

*UIKit*

```swift
let image = BitcoinUIImage(named: "coldcard")
let imageView = UIImageView(image: image)
imageView.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
view.addSubview(imageView)
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
