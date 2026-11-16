#!/bin/bash

set -euo pipefail

PLUGINS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"

REPOSITORIES=(
    "zdharma-continuum/fast-syntax-highlighting"
    "zsh-users/zsh-autosuggestions"
    "zsh-users/zsh-syntax-highlighting"
)

for repository in "${REPOSITORIES[@]}"; do
    name="${repository##*/}"

    echo "Installing $name"
    git clone "https://github.com/$repository.git" "$PLUGINS_DIR/$name"
done
