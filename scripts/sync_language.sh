#!/bin/bash

readonly this="$(dirname "$0")"
readonly root="$this/.."
"$this/language_bytes.sh" > "$root/components/international/language_statistics.json"
TZ="Asia/Tokyo" date '+%F (JST)' | tr -d '\n' > "$root/components/international/language_statistics_update_date.txt"
