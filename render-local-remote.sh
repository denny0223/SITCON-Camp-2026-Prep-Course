#!/usr/bin/env bash
set -euo pipefail

mmdc -p mmdc-puppeteer.json -i img/local-remote.mmd -o img/local-remote.svg -b transparent

# Mermaid keeps lifelines at y2="2000" when sequence.mirrorActors is false.
# The group boxes end at -5 + 383 = 378 in the generated SVG.
perl -0pi -e 's/y2="2000" class="actor-line/y2="378" class="actor-line/g' img/local-remote.svg
