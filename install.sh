#!/bin/bash

set -e

echo "Starting post-omarchy installation..."
echo "======================================"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="${SCRIPT_DIR}/scripts"

# Execute all scripts in order
for script in "${SCRIPTS_DIR}"/0*.sh "${SCRIPTS_DIR}"/1*.sh; do
    if [ -f "$script" ]; then
        echo "Executing: $(basename "$script")"
        bash "$script"
        echo ""
    fi
done

echo "======================================"
echo "Installation completed successfully!"
