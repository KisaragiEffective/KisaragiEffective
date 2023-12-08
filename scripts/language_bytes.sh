#!/bin/bash

if [[ -z "$GH_PAT" ]]; then
  if [[ -t 0 ]]; then
    read -rsp 'Please input GitHub Personal Access Token: ' GH_PAT
  else
    echo 'Please specify Personal Access Token via $GH_PAT.' >&2
    exit 1
  fi
fi

build_query() {
  if [[ -z "$next_cursor" ]]; then
    printf 'query { \nuser(login: \"KisaragiEffective\") { \nlogin\nrepositories(first: 100, isFork: false, privacy: PUBLIC) {\nnodes {\nname\nprimaryLanguage {\nname\n}\nlanguages(first: 100) {\nedges {\nnode {\nname\ncolor\n}\nsize\n}\n}\n\n}\ntotalDiskUsage\npageInfo {\nendCursor\nstartCursor\nhasNextPage\n}\ntotalCount\n}\n}\n}'
  else
    printf 'query { \nuser(login: \"KisaragiEffective\") { \nlogin\nrepositories(first: 100, isFork: false, privacy: PUBLIC, after: '
    printf '"%s"' "$next_cursor"
    printf ') {\nnodes {\nname\nprimaryLanguage {\nname\n}\nlanguages(first: 100) {\nedges {\nnode {\nname\ncolor\n}\nsize\n}\n}\n\n}\ntotalDiskUsage\npageInfo {\nendCursor\nstartCursor\nhasNextPage\n}\ntotalCount\n}\n}\n}'
  fi
}

merge_response() {
  jq -s \ |
    jq '[.[] | to_entries[]] | group_by(.key) | map({ (.[0].key): [.[].value] | add }) | add'
}

do_request() {
  curl -H "Authorization: Bearer $GH_PAT" \
    -H "User-Agent: KisaragiEffective/KisaragiEffective.LanguageStatistics (code is from https://github.com/KisaragiEffective/KisaragiEffective)" \
    -d@- \
    https://api.github.com/graphql
}

raw_to_json() {
  jq -n --arg x "$(cat)" '{ "query": $x }'
}

fmt() {
  jq --argjson ex "$exclude_json" '[[.data.user.repositories.nodes[] | select(.name as $name | $ex | all(. != $name)) | .languages.edges[] | {"key": .node.name, "value": .size}] | group_by(.key)[] | {(.[0].key): [.[] | .value] | add}] | reduce .[] as $item ({}; . * $item)'
}

sort_by_desc() {
  jq 'to_entries | sort_by(-.value) | from_entries'
}

export next_cursor=""
export res_acc=""

raw="$(mktemp)"
exclude_json="$(jq -c '.target | map(.repository)' < "$(dirname "$0")/../components/international/language_statistics_ignore.json")"
while true; do
  echo "query: $(build_query)" >&2
  res="$(build_query | raw_to_json | do_request)"
  res_acc="$res_acc$(echo)$(echo "$res" | tee -a "$raw" | fmt)"
  has_next=$(echo "$res" | jq 'if .data.user.repositories.pageInfo.hasNextPage then 1 else 0 end')
  if [[ "$has_next" -eq '0' ]]; then
    break
  else
    next_cursor="$(echo "$res" | jq -r '.data.user.repositories.pageInfo.endCursor')"
    echo "next: $next_cursor" >&2
  fi
done
echo "raw data: $raw" >&2
echo "excluded: $exclude_json" >&2
echo "$res_acc" | merge_response | sort_by_desc
unset res_acc
unset next_cursor
