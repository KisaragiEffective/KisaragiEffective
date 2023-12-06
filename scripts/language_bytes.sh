#!/bin/bash

if [[ -t 0 && -z "$GH_PAT" ]]; then
  read -rsp 'Please input GitHub Personal Access Token: ' GH_PAT
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

get_current_user() {
  curl -H "Authorization: Bearer $GH_PAT" \
    -H "Accept: application/vnd.github+json" \
    -H "User-Agent: KisaragiEffective/KisaragiEffective.LanguageStatistics" \
    https://api.github.com/user | \
  jq '.login'
}

merge_response() {
  jq -s \ |
    jq '[.[] | to_entries[]] | group_by(.key) | map({ (.[0].key): [.[].value] | add }) | add'
}

do_request() {
  curl -H "Authorization: Bearer $GH_PAT" \
    -H "User-Agent: KisaragiEffective/KisaragiEffective.LanguageStatistics (Runned by $(get_current_user)'s token, code is from https://github.com/KisaragiEffective/KisaragiEffective)" \
    -d@- \
    https://api.github.com/graphql
}

raw_to_json() {
  jq -n --arg x "$(cat)" '{ "query": $x }'
}

fmt() {
  jq '[[.data.user.repositories.nodes[] | .languages.edges[] | {"key": .node.name, "value": .size}] | group_by(.key)[] | {(.[0].key): [.[] | .value] | add}] | reduce .[] as $item ({}; . * $item)'
}

sort_by_desc() {
  jq 'to_entries | sort_by(-.value) | from_entries'
}

export next_cursor=""
export res_acc=""

while true; do
  echo "query: $(build_query)"
  res="$(build_query | raw_to_json | do_request)"
  res_acc="$res_acc$(echo)$(echo "$res" | fmt)"
  has_next=$(echo "$res" | jq 'if .data.user.repositories.pageInfo.hasNextPage then 1 else 0 end')
  if [[ "$has_next" -eq '0' ]]; then
    break
  else
    next_cursor="$(echo "$res" | jq -r '.data.user.repositories.pageInfo.endCursor')"
    echo "next: $next_cursor"
  fi
done
echo "$res_acc" | merge_response | sort_by_desc
unset res_acc
unset next_cursor
