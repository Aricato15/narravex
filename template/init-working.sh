#!/bin/sh
# Create working/ from template/starter/ without overwriting existing files.
# Run from the repository root:  sh template/init-working.sh
set -e
cd "$(dirname "$0")/.."
mkdir -p working
cp -Rn template/starter/. working/
echo "working/ ready (existing files were not overwritten)."
