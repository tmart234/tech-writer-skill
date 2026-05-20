#!/usr/bin/env bash
#
# check-draft.sh - mechanical anti-pattern checks for the technical-blog-writer skill.
#
# Usage: scripts/check-draft.sh path/to/draft.md
#
# Verifies the countable hard caps from references/anti-patterns.md section 7. It
# does NOT verify the judgment patterns (juxtaposition rhythm 4q, negative-to-
# positive arc 4r, false balance 4e, restatement loops 4g). Those still need a
# human read - see anti-patterns.md section 9.
#
# The Tier-1 and phrase checks assume the input is a blog draft. Run this on a
# skill reference file and they will flag words the file legitimately quotes;
# only the em-dash check is meaningful as a regression gate on the skill's own
# prose.

set -eu

file="${1:-}"
if [ -z "$file" ]; then
  echo "usage: $(basename "$0") <file.md>" >&2
  exit 2
fi
if [ ! -f "$file" ]; then
  echo "no such file: $file" >&2
  exit 2
fi

words=$(wc -w < "$file" | tr -d ' ')
if [ "$words" -eq 0 ]; then
  echo "empty file: $file" >&2
  exit 2
fi

fail=0

# per_k <cap-per-1000> -> cap scaled to this file, never below 1
per_k() {
  local c=$(( words * $1 / 1000 ))
  [ "$c" -lt 1 ] && c=1
  echo "$c"
}

# check <label> <count> <cap> <note>
check() {
  local status="ok"
  if [ "$2" -gt "$3" ]; then
    status="FAIL"
    fail=1
  fi
  printf '  %-26s %4d / %-4d  %-22s [%s]\n' "$1" "$2" "$3" "$4" "$status"
}

tier1_re='delve|delving|tapestry|realm|leverage|leverages|leveraging|utilize|utilizes|utilizing|seamless|seamlessly|cutting-edge|state-of-the-art|intricate|underscore|underscores|underscored|showcase|showcases|showcasing|meticulous|meticulously|pivotal|paramount|testament|cornerstone|plethora|myriad'

emdash=$(grep -o '—' "$file" | wc -l | tr -d ' ')
tier1=$(grep -oiE "\b(${tier1_re})\b" "$file" | wc -l | tr -d ' ')
notjust=$(grep -oiE 'not (just|only)' "$file" | wc -l | tr -d ' ')
however=$(grep -oiE '\b(however|moreover|furthermore|additionally)\b' "$file" | wc -l | tr -d ' ')
exhort=$(grep -oiE 'stay (safe|vigilant|informed|secure)|in conclusion|to sum up|at the end of the day|all things considered' "$file" | wc -l | tr -d ' ')

echo "anti-pattern check: $file  (${words} words)"
echo
check "em dashes"            "$emdash"  "$(per_k 3)" "3 per 1,000 words"
check "Tier-1 banned words"  "$tier1"   0            "always 0"
check "not just / not only"  "$notjust" 1            "1 per post"
check "however/moreover/etc" "$however" "$(per_k 2)" "1 per 500 words"
check "closing exhortations" "$exhort"  0            "always 0"
echo

if [ "$fail" -ne 0 ]; then
  echo "FAIL - fix the flagged caps (anti-patterns.md sections 1-7), then re-run."
  echo "Judgment checks (anti-patterns.md section 9) are still required."
  exit 1
fi
echo "mechanical caps OK. Judgment checks (anti-patterns.md section 9) are still required."
