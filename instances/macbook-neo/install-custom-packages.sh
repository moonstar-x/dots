#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../scripts" && pwd)"

packages=(
  jellyfin-tui
  gh-dash
)

for pkg in "${packages[@]}"; do
  bash "$SCRIPTS_DIR/install-custom-package.sh" "$pkg"
done
