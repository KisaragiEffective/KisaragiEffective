#!/bin/bash

readonly this="$(dirname "$0")"
readonly root="$this/.."

# HACK: MTP resolves each component to be relative path based on PWD, not from the root document.
#       It causes summary of spoiler to be like `./scripts/../components/<whatever>`, which is not so elegant.
#       This requires modification of MTP, but we can work-around it by changing PWD before invoking it.
# shellcheck disable=SC2164
(cd "$root"; "$root/markdown-template-preprocessor" -i "$root/README.template.md" -o "$root/output/README.md" -m spoiler)
