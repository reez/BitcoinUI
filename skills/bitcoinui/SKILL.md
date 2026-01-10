---
name: bitcoinui
description: iOS-only design and accessibility review for Bitcoin apps or SwiftUI code. Use when asked to review iOS UI against Bitcoin Design Guide best practices, iOS HIG, accessibility, or BitcoinUI component usage.
---

# BitcoinUI Review

## Overview

Review iOS SwiftUI code and screens for Bitcoin-specific UX correctness, iOS HIG alignment, and accessibility. Prefer suggesting BitcoinUI components when they match the pattern.

## Quick Start

- If `$ARGUMENTS` is provided, review those file(s) directly.
- If `$ARGUMENTS` is empty, ask which file(s) to review. This skill is SwiftUI-first; for UIKit or mixed codebases, ask for specific files/screens.
- Do not scan the whole repo without user consent.

## Review Workflow

1. Read the target file(s) before commenting.
2. Apply the rubric in `references/bitcoinui-rubric.md`.
3. Report issues by severity with line numbers, a short snippet, and a concrete fix.
4. Suggest BitcoinUI components when they would reduce errors or improve consistency.
5. Do not modify code unless the user asks; offer to fix if appropriate.

## Output Format

```
═══════════════════════════════════════════════════
BITCOINUI REVIEW: [filename]
═══════════════════════════════════════════════════

CRITICAL (X issues)
──────────────────
[UX] Line 42: Missing warning for fee > amount
  Fix: Add a warning state when fee >= 50% of amount.
  Reference: Fees (Bitcoin Design Guide)

SERIOUS (X issues)
──────────────────
[A11Y] Line 18: Icon-only button has no label
  Fix: Add accessibilityLabel("Close")
  Reference: iOS HIG / VoiceOver

MODERATE (X issues)
──────────────────
...

INFO (X issues)
────────────────
...

═══════════════════════════════════════════════════
SUMMARY: X critical, X serious, X moderate, X info
═══════════════════════════════════════════════════
```

## References

Use `references/bitcoinui-rubric.md` for Bitcoin-specific heuristics and iOS HIG checks. Load only the sections needed for the current review.
