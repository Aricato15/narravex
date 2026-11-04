#!/bin/sh
# Create working/ from _template/starter/ without overwriting existing files.
# Run from the repository root:  sh _template/init-working.sh
set -e
cd "$(dirname "$0")/.."
mkdir -p working
cp -Rn _template/starter/. working/
echo "working/ ready (existing files were not overwritten)."
