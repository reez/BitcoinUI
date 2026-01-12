#!/usr/bin/env bash
set -euo pipefail

BITCOINUI_URL="https://bitcoinui.ai/bitcoinui.md"
SKILL_BASE_URL="https://bitcoinui.ai/skills/bitcoinui"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
INSTALLED=0

echo "Installing bitcoinui..."
echo ""

# Claude Code
if command -v claude >/dev/null 2>&1 || [ -d "$HOME/.claude" ]; then
  mkdir -p "$HOME/.claude/commands"
  curl -fsSL -o "$HOME/.claude/commands/bitcoinui.md" "$BITCOINUI_URL"
  echo "Installed for Claude Code"
  INSTALLED=$((INSTALLED + 1))
fi

# Cursor
if command -v cursor >/dev/null 2>&1 || [ -d "$HOME/.cursor" ]; then
  mkdir -p "$HOME/.cursor/commands"
  curl -fsSL -o "$HOME/.cursor/commands/bitcoinui.md" "$BITCOINUI_URL"
  echo "Installed for Cursor"
  INSTALLED=$((INSTALLED + 1))
fi

# OpenCode
if command -v opencode >/dev/null 2>&1 || [ -d "$HOME/.config/opencode" ]; then
  mkdir -p "$HOME/.config/opencode/command"
  curl -fsSL -o "$HOME/.config/opencode/command/bitcoinui.md" "$BITCOINUI_URL"
  echo "Installed for OpenCode"
  INSTALLED=$((INSTALLED + 1))
fi

# Codex
if command -v codex >/dev/null 2>&1 || [ -d "$CODEX_HOME" ]; then
  SKILL_DIR="$CODEX_HOME/skills/bitcoinui"
  REF_DIR="$SKILL_DIR/references"
  mkdir -p "$REF_DIR"
  curl -fsSL -o "$SKILL_DIR/SKILL.md" "$SKILL_BASE_URL/SKILL.md"
  curl -fsSL -o "$REF_DIR/bitcoinui-rubric.md" "$SKILL_BASE_URL/references/bitcoinui-rubric.md"
  echo "Installed for Codex"
  INSTALLED=$((INSTALLED + 1))
fi

echo ""

if [ "$INSTALLED" -eq 0 ]; then
  echo "No supported tools detected."
  echo ""
  echo "Install one of these first:"
  echo "  - Claude Code: https://claude.ai/code"
  echo "  - Cursor: https://cursor.com"
  echo "  - OpenCode: https://opencode.ai"
  echo "  - Codex: https://github.com/openai/codex"
  exit 1
fi

echo "Done! Run /bitcoinui (or \$bitcoinui in Codex)."
