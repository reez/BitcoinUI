![cover image](/Docs/bitcoin-wallet-ui-kit-themes.png)

# BitcoinUI

BitcoinUI is a native iOS implementation of [Bitcoin Wallet UI Kit](https://github.com/GBKS/bitcoin-wallet-ui-kit).

*Both BitcoinUI and its reference Bitcoin Wallet UI Kit are Work In Progress.*

[What's Included](#whats-included)<br>
[Basic Usage](#basic-usage)<br>
[Requirements](#requirements)<br>
[Installation](#installation)<br>

## What's Included

The design system in BitcoinUI includes:

- Colors  
- Button styles
- Text styles
- Icons
- Views

<p align='left'>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/colors-dark.png?raw=true' height='200' alt='colors-code-preview' />
    </a>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/button-dark.png?raw=true' height='200' alt='buttons-code-preview' />
    </a>
    <a href='https://www.figma.com/community/file/916680391812923706/Bitcoin-Wallet-UI-Kit-(work-in-progress)'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/text-dark.png?raw=true' height='200' alt='text-code-preview' />
    </a>
    <a href='https://github.com/GBKS/bitcoin-hardware-illustrations'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/icon-dark.png?raw=true' height='200' alt='hardware-illustrations-code-preview' />
    </a>
    <a href='https://bitcoin.design/assets/images/guide/glossary/address/address-expanded@2x.png'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/address-dark.png?raw=true' height='200' alt='address-code-preview' />
    </a>
    <a href='https://bitcoin.design/assets/images/guide/daily-spending-wallet/backup-and-recovery/manual-backup/manual-backup-recovery-phrase-full.png'>
        <img src='https://github.com/reez/BitcoinUI/blob/main/Docs/words-dark.png?raw=true' height='200' alt='words-code-preview' />
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
 
- `BitcoinFilled`

- `BitcoinOutlined`

- `BitcoinPlain`

*SwiftUI*

```swift    
Button("Filled button") {
    print("Button pressed!")
}
.buttonStyle(BitcoinFilled())
```

### Text Styles

Ten text styles are implemented in SwiftUI: 

- `BitcoinTitle1` - `BitcoinTitle5`

- `BitcoinBody1` - `BitcoinBody5`

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

BitcoinUI currently requires minimum deployment targets of iOS 16 and macOS 13.

## Installation

You can add BitcoinUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Add Packages…**
  2. Enter "https://github.com/reez/BitcoinUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **BitcoinUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **BitcoinUI** and then depend on that framework in all of your targets.

## UI Review Tools

BitcoinUI ships with AI review prompts for Bitcoin-specific UX and iOS HIG checks.

### Codex (skill)

1. Link the skill into your Codex skills directory:

```sh
ln -s "$(pwd)/skills/bitcoinui" "$CODEX_HOME/skills/bitcoinui"
```

2. In Codex, run `/bitcoinui` and pass a SwiftUI file to review.

### Claude (command)

1. Copy the command file into your Claude commands directory:

```sh
cp commands/bitcoinui.md /path/to/claude/commands/bitcoinui.md
```

2. In Claude, run `/bitcoinui` and pass a SwiftUI file to review.
