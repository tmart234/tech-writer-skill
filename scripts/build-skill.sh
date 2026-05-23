#!/usr/bin/env bash
# Package this repo as a Claude Code .skill archive.
#
# Usage: ./scripts/build-skill.sh [--no-voice]
#   --no-voice   omit the voice/ folder (ship the generic core only)
#
# Output: dist/technical-blog-writer.skill

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NAME="technical-blog-writer"
OUT_DIR="$ROOT/dist"
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

INCLUDE_VOICE=1
for arg in "$@"; do
  case "$arg" in
    --no-voice) INCLUDE_VOICE=0 ;;
    *) echo "unknown flag: $arg" >&2; exit 2 ;;
  esac
done

mkdir -p "$OUT_DIR" "$STAGE/$NAME"
cp "$ROOT/SKILL.md" "$STAGE/$NAME/"
cp "$ROOT/README.md" "$STAGE/$NAME/"
cp -r "$ROOT/references" "$STAGE/$NAME/"
cp -r "$ROOT/scripts" "$STAGE/$NAME/"
if [ "$INCLUDE_VOICE" -eq 1 ] && [ -d "$ROOT/voice" ]; then
  cp -r "$ROOT/voice" "$STAGE/$NAME/"
fi

rm -f "$OUT_DIR/$NAME.skill"
(cd "$STAGE" && zip -rq "$OUT_DIR/$NAME.skill" "$NAME")

echo "built: $OUT_DIR/$NAME.skill"
