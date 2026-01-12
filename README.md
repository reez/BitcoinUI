# Bitcoin UI

Bitcoin UI components and review for native iOS apps.

[Swift Package](#swift-package)<br>
[Design Review](#design-review)<br>

## Swift Package

Install `BitcoinUI` via Swift Package Manager with `https://github.com/reez/BitcoinUI`

`BitcoinUI` includes:

- Colors  
- Button styles
- Text styles
- Icons
- Views

Example usage:

```swift
import BitcoinUI

Text("Bitcoin Orange")
    .font(.caption)
    .foregroundColor(.bitcoinOrange)
    .multilineTextAlignment(.center)
```

## Design Review

Install `bitcoinui` in your AI coding tool.

### Claude

```sh
curl -L -o ~/.claude/commands/bitcoinui.md https://bitcoinui.ai/bitcoinui.md
claude
/bitcoinui
```

### Codex

```sh
curl -fsSL https://bitcoinui.ai/install-codex.sh | bash
codex
$bitcoinui
```

### Cursor

```sh
curl -L -o ~/.cursor/commands/bitcoinui.md https://bitcoinui.ai/bitcoinui.md
cursor
/bitcoinui
```

### OpenCode

```sh
curl -L -o ~/.config/opencode/command/bitcoinui.md https://bitcoinui.ai/bitcoinui.md
opencode
/bitcoinui
```

Example output:

```
===============================================
BITCOINUI REVIEW: SendFeeView.swift
===============================================

SERIOUS (1 issue)
------------------
[UX] Line 88: Fee picker lacks a high-fee warning
  Fix: Add a warning when fee >= 50% of amount.
  Reference: Bitcoin Design Guide — Send fees https://bitcoin.design/guide/daily-spending-wallet/sending/send-fees/

MODERATE (1 issue)
------------------
[A11Y] Line 42: Icon-only close button has no label
  Fix: Add accessibilityLabel("Close")
  Reference: iOS HIG — Accessibility https://developer.apple.com/design/human-interface-guidelines/accessibility

===============================================
SUMMARY: 0 critical, 1 serious, 1 moderate, 0 info
===============================================
```
