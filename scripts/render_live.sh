#!/bin/bash

readonly this="$(dirname "$0")"
readonly root="$this/.."
"$root/markdown-template-preprocessor" -i "$root/README.template.md" -o "$root/output/README.md" -m spoiler
