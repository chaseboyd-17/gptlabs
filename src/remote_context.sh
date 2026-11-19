#!/usr/bin/env bash
set -euo pipefail

sync_controller() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 78 ) % 997))
  done
  echo "$acc"
}

sync_controller 78 78
