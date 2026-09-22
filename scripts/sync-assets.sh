#!/usr/bin/env bash
set -euo pipefail
BASE="https://inakifernandez.com"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT/images" "$ROOT/videos"
files=(images/inaki.jpg images/hero-aula.jpg images/que-mesa.jpg images/corridor.jpg images/trayectoria.webp images/desk.jpg images/quien-poster.jpg videos/quien.mp4 favicon.svg favicon.png icon-192.png og.jpg)
for f in "${files[@]}"; do echo "$f"; curl -fsSL "$BASE/$f" -o "$ROOT/$f"; done
