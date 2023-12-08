#!/bin/bash

readonly this="$(dirname "$0")"
readonly root="$(realpath "$this/..")"

if [[ -z "$RENDER_TO" ]]; then
  RENDER_TO="$root/output/README.md"
fi

# HACK: MTP resolves each component to be relative path based on PWD, not from the root document.
#       It causes summary of spoiler to be like `./scripts/../components/<whatever>`, which is not so elegant.
#       This requires modification of MTP, but we can work-around it by changing PWD before invoking it.
cp "$root/README.template.md" .
"$root/markdown-template-preprocessor" -i "./README.template.md" -o "$RENDER_TO" -m spoiler
rm "$root/README.template.md"
