#!/bin/bash

set -euo pipefail

PLUGINS_DIR="$HOME/.config/tmux/plugins"

REPOSITORIES=(
    "jaclu/tmux-menus"
    "tmux-plugins/tmux-resurrect"
    "tmux-plugins/tmux-continuum"
    "tmux-plugins/tmux-battery"
    "tmux-plugins/tmux-sensible"
    "sainnhe/tmux-fzf"
    "tmux-plugins/tmux-prefix-highlight"
)

for repository in "${REPOSITORIES[@]}"; do
    name="${repository##*/}"

    echo "Installing $name"
    git clone "https://github.com/$repository.git" "$PLUGINS_DIR/$name"
done
