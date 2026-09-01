#!/usr/bin/env bash
set -euo pipefail

# This project is a static site with no dependencies or build step.
# Validate the files required by the preview so merge setup fails clearly
# if the imported project is incomplete.
test -f index.html
test -f style.css
test -f favicon.svg

echo "Static site post-merge setup complete."