#!/bin/bash

set -euo pipefail

echo "Installing Oh-my-ZSH"
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
