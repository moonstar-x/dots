#!/bin/bash

set -euo pipefail

NVIM_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

echo "Installing nvim config"
git clone https://github.com/moonstar-x/nvim-config.git "$NVIM_CONFIG_DIR"
