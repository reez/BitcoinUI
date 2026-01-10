#!/usr/bin/env bash
set -euo pipefail

CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILL_DIR="$CODEX_HOME/skills/bitcoinui"
REF_DIR="$SKILL_DIR/references"
BASE_URL="https://bitcoinui.ai/skills/bitcoinui"

mkdir -p "$REF_DIR"

curl -fsSL -o "$SKILL_DIR/SKILL.md" "$BASE_URL/SKILL.md"
curl -fsSL -o "$REF_DIR/bitcoinui-rubric.md" "$BASE_URL/references/bitcoinui-rubric.md"

echo "Installed to $SKILL_DIR"
echo "Restart Codex to pick up new skills."
