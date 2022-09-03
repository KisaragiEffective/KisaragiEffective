# KisaragiEffective
## Stats


[![github stats](https://github-readme-stats.vercel.app/api?username=KisaragiEffective&count_private=true&show_icons=true&theme=dark)](https://github.com/anuraghazra/github-readme-stats)
[![languages](https://github-readme-stats.vercel.app/api/top-langs/?username=KisaragiEffective&theme=dark)](https://github.com/anuraghazra/github-readme-stats)

### Bytes of code in this account
(As of 2022-09-03)
```json
{
  "Kotlin": 522123,
  "Rust": 334268,
  "PHP": 90023,
  "Java": 61007,
  "HTML": 32430,
  "Scala": 16113,
  "Blade": 11591,
  "Shell": 4730,
  "JavaScript": 2517,
  "CSS": 1296,
  "Dockerfile": 748,
  "Procfile": 52,
  "SCSS": 3
}
```

<details><summary>Method</summary>

**GraphQL query**
```graphql
query { 
  user(login: "KisaragiEffective") { 
    login
    repositories(first: 100, isFork: false, privacy: PUBLIC) {
      nodes {
        name
        primaryLanguage {
          name
        }
        languages(first: 100) {
          edges {
            node {
              name
              color
            }
            size
          }
        }
        
      }
      totalDiskUsage
      pageInfo {
        endCursor
        startCursor
      }
      totalCount
    }
  }
}
```

**jq**
```shell
jq '[[.data.viewer.repositories.nodes[] | .languages.edges[] | {"key": .node.name, "value": .size}] | group_by(.key)[] | {(.[0].key): [.[] | .value] | add}] | reduce .[] as $item ({}; . * $item) | to_entries | sort_by(-.value) | from_entries' < input.json
```
</details>

## Languages
- Japanese: native
- English: intermidiate (not business level)
- other languages: via machine translate

## Skills
{{link or include|./docs/en/SKILL.md}}

## Properties
{{link or include|./docs/en/PROPERTY.md}}

## Repos
- [gist](https://gist.github.com/KisaragiEffective)

### Library
- [dateformat.js](https://github.com/KisaragiEffective/dateformat.js)
- [scala-simd-wrapper](https://github.com/KisaragiEffective/scala-simd-wrapper)

### Product
{{link or include|./docs/en/PRODUCT.md}}

## Notes
- [ksrgte.ch](https://services.ksrgte.ch) is my domain.
- Icon: from [picrew.me](https://picrew.me/image_maker/36849), license: allowed redistribute, modify
- <small>for trusted user: see [@KisaragiEffective/private](https://github.com/KisaragiEffective/private)</small>
- This README is validated by [GitHubActions](https://github.com/KisaragiEffective/KisaragiEffective/blob/live/.github/workflows/markdown-lint.yml).
