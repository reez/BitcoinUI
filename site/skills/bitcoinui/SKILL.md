---
name: bitcoinui
description: Bitcoin UI review (iOS)
---

# BitcoinUI Review

## Overview

Review iOS SwiftUI code and screens for Bitcoin-specific UX correctness, iOS HIG alignment, and accessibility. Prefer suggesting BitcoinUI components when they match the pattern.

## Quick Start

- If `$ARGUMENTS` is a file or list of files, review those directly.
- If `$ARGUMENTS` is a folder, review all SwiftUI `.swift` files in that folder (recursive). If the folder is large, ask to narrow the scope.
- If `$ARGUMENTS` is empty, ask: "Using the bitcoinui skill for an iOS review. Which file(s) or folder should I review?" Do not scan the whole repo without user consent.

## Review Workflow

1. Read the target file(s) before commenting.
2. Apply the rubric in `references/bitcoinui-rubric.md`.
3. Report issues by severity with line numbers, a short snippet, and a concrete fix. Include a direct URL in each Reference line.
4. For Bitcoin-specific issues, include at least one Bitcoin Design Guide or BIP URL in the Reference line.
4. Suggest BitcoinUI components when they would reduce errors or improve consistency.
5. Omit any severity section with 0 issues (including INFO).
6. INFO is for optional polish/consistency notes; skip it if there are no meaningful suggestions.
7. Do not modify code unless the user asks; offer to fix if appropriate.

## Output Format

Start directly with the `BITCOINUI REVIEW` block; do not add any preamble text before it.
Omit any severity section with 0 issues (including INFO).

```
===============================================
BITCOINUI REVIEW: [filename]
===============================================

CRITICAL (X issues)
------------------
[UX] Line 42: Missing warning for fee > amount
  Fix: Add a warning state when fee >= 50% of amount.
  Reference: Bitcoin Design Guide — Send fees https://bitcoin.design/guide/daily-spending-wallet/sending/send-fees/

SERIOUS (X issues)
------------------
[A11Y] Line 18: Icon-only button has no label
  Fix: Add accessibilityLabel("Close")
  Reference: iOS HIG — Accessibility https://developer.apple.com/design/human-interface-guidelines/accessibility

MODERATE (X issues)
------------------
...

INFO (X issues)
--------------
...

===============================================
SUMMARY: X critical, X serious, X moderate, X info
===============================================
```

## References

Use `references/bitcoinui-rubric.md` for Bitcoin-specific heuristics and iOS HIG checks. Load only the sections needed for the current review.
