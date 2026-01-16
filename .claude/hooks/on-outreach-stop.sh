#!/usr/bin/env bash
set -euo pipefail
cd "${CLAUDE_PROJECT_DIR:-.}"

QUEUE="company brain/sales/active/user interviews/_queue.json"
if [[ ! -f "$QUEUE" ]]; then
  echo "[hook] No queue at $QUEUE; skipping"
  exit 0
fi

# Find prospects ready for outreach (compatible with zsh/older bash)
ready=()
while IFS= read -r line; do
  [[ -n "$line" ]] && ready+=("$line")
done < <(jq -r '.items[] | select(.status=="READY_FOR_OUTREACH") | .slug' "$QUEUE" 2>/dev/null || true)

# Find drafts awaiting approval
drafts=()
while IFS= read -r line; do
  [[ -n "$line" ]] && drafts+=("$line")
done < <(jq -r '.items[] | select(.status=="DRAFT_CREATED") | .slug' "$QUEUE" 2>/dev/null || true)

if (( ${#drafts[@]} > 0 )); then
  echo "⚠️  ${#drafts[@]} draft(s) waiting for approval in Gmail"
  for slug in "${drafts[@]}"; do
    name=$(jq -r ".items[] | select(.slug==\"$slug\") | .name" "$QUEUE")
    echo "   → $name ($slug)"
  done
  echo ""
  echo "After approving drafts, run: /interview-outreach update-status"
fi

if (( ${#ready[@]} > 0 )); then
  slug="${ready[0]}"
  name=$(jq -r ".items[] | select(.slug==\"$slug\") | .name" "$QUEUE")
  echo "📧 Next prospect ready: $name"
  echo ""
  echo "Run: /interview-outreach $slug"
fi

if (( ${#ready[@]} == 0 && ${#drafts[@]} == 0 )); then
  echo "✅ No prospects READY_FOR_OUTREACH. Check queue status or add more prospects."
fi

exit 0
