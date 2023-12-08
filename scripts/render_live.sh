#!/bin/bash

readonly this="$(dirname "$0")"
readonly root="$(realpath "$this/..")"

if [[ -z "$RENDER_TO" ]]; then
  RENDER_TO="$root/output/README.md"
fi

"$root/markdown-template-preprocessor" -i "$root/README.template.md" -o "$RENDER_TO" -m spoiler
