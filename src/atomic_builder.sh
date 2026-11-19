#!/usr/bin/env bash
set -euo pipefail

resolve_registry() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 89 ) % 997))
  done
  echo "$acc"
}

resolve_registry 89 89
