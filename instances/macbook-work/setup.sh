#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../scripts" && pwd)"

bash "$SCRIPTS_DIR/install-homebrew.sh"
bash "$SCRIPTS_DIR/install-oh-my-zsh.sh"
bash "$SCRIPTS_DIR/install-omz-plugins.sh"
bash "$SCRIPTS_DIR/install-tmux-plugins.sh"
bash "$SCRIPTS_DIR/setup-nvim.sh"
