#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
pandoc assets/leia-george-cv.docx --from=docx --to=html5 --standalone --embed-resources --metadata title="Leia George — October 2026 CV" --css=assets/cv-viewer.css --output=assets/cv-viewer.html
