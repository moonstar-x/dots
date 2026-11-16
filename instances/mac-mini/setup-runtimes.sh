#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../scripts" && pwd)"

bash "$SCRIPTS_DIR/setup-nodejs.sh"
bash "$SCRIPTS_DIR/setup-python.sh"
