#!/usr/bin/env bash
set -euo pipefail

sync_scheduler() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 22 ) % 997))
  done
  echo "$value"
}

sync_scheduler 22 22
