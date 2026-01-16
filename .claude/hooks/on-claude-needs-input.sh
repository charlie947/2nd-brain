#!/usr/bin/env bash
set -euo pipefail

# Show macOS system notification when Claude finishes responding and needs user input
osascript -e 'display notification "Claude needs your input" with title "Claude Code" sound name "Submarine"'

exit 0
