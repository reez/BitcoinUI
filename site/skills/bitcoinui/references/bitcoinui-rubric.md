# BitcoinUI Review Rubric (iOS)

## Scope

- iOS-only; prefer SwiftUI guidance.
- Align with Bitcoin Design Guide and iOS HIG.
- Suggest BitcoinUI components when they map cleanly.

## Severity

- Critical: could cause loss of funds, irreversible mistakes, or misleading safety.
- Serious: likely user error, accessibility blockers, or major HIG violations.
- Moderate: clarity or consistency issues.
- Info: polish suggestions.

## Bitcoin-Specific Checks

### Addresses

- Use monospace and grouping for readability; left-align chunks.
- Offer a full, readable address view for verification.
- Validate addresses; block sending on invalid input; subtle valid state is ok.
- Avoid address reuse; warn when reusing.
- Mention compatibility if users must choose formats (bc1q, bc1p, 3, 1).

### QR Codes

- Large size, high contrast, and adequate quiet zone.
- Uppercase bech32 only for QR encoding to reduce complexity. Do not change user-visible strings and never mix case.
- Consider raising screen brightness when displaying QR.
- Prefer BIP21 / unified requests when possible.

### Seed Phrases

- Numbered words; clear warnings about consequences.
- Encourage no screenshots or photos; use privacy-safe display.
- Provide a confirmation step.
- Consider language support for BIP39 wordlists.

### Fees

- Provide fee breakdown and explain unexpected fees.
- Warn when fee is high relative to amount (benchmark 50%).
- Offer urgency-based options with confirmation time hints.

### Units

- Default BTC for on-chain and sats for lightning.
- Allow unit switching; include local currency.
- Locale-aware formatting; handle very small amounts.

## iOS HIG / Accessibility

- Dynamic Type support; avoid clipping at large sizes.
- Respect Reduce Motion.
- VoiceOver labels for icons; meaningful reading order.
- Hit targets at least 44x44.
- Avoid color-only meaning.

## BitcoinUI Component Suggestions

- Address display: `AddressFormattedView`.
- QR: `QRCodeView` with error correction and color controls.
- Seed phrase: `SeedPhraseView` with privacy options.
- Colors, buttons, text, icons: BitcoinUI styles and palette.
