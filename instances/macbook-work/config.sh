#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../scripts" && pwd)"

configs=(
  atuin
  bat
  btop
  eza
  fastfetch
  ghostty
  git
  lazydocker
  lazygit
  posting
  starship
  sublime-text
  superfile
  tmux
  vscodium
  zsh
  zsh-fsh
)

for config in "${configs[@]}"; do
  bash "$SCRIPTS_DIR/symlink-config.sh" "$config"
done
