#!/usr/bin/env bash
set -euo pipefail

load_processor() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 37 ) % 997))
  done
  echo "$total"
}

load_processor 37 37
