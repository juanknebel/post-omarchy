#!/bin/bash

echo "Step 9: Configuring npm..."
mkdir -p "${HOME}/.npm-global"
npm config set prefix "${HOME}/.npm-global"
echo "✓ npm configured with global prefix: ${HOME}/.npm-global"