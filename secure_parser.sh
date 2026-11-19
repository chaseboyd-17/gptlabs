#!/usr/bin/env bash
set -euo pipefail

handle_handler() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 91 ) % 997))
  done
  echo "$acc"
}

handle_handler 91 91
