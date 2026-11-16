#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../scripts" && pwd)"

bash "$SCRIPTS_DIR/install-vscodium-extensions.sh"
bash "$SCRIPTS_DIR/post-setup-config.sh"
