#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
cv_output=$(mktemp -d)
trap 'rm -rf "$cv_output"' EXIT
XDG_CACHE_HOME=/workspace/.cache soffice --headless "-env:UserInstallation=file://$cv_output/profile" --convert-to pdf --outdir "$cv_output" assets/leia-george-cv.docx
test -s "$cv_output/leia-george-cv.pdf"
cp "$cv_output/leia-george-cv.pdf" assets/leia-george-cv.pdf
