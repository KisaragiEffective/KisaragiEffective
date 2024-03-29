# KisaragiEffective
## Stats

[![github stats](https://github-readme-stats.vercel.app/api?username=KisaragiEffective&count_private=true&show_icons=true&theme=dark)](https://github.com/anuraghazra/github-readme-stats)
[![languages](https://github-readme-stats.vercel.app/api/top-langs/?username=KisaragiEffective&theme=dark)](https://github.com/anuraghazra/github-readme-stats)

### Bytes of code in this account

As of {{include|./components/international/language_statistics_update_date.txt}}:

{{include|./components/international/hack_code_ref_start_json.txt}}
{{include|./components/international/language_statistics.json}}
{{include|./components/international/hack_code_ref_end.txt}}

<details><summary>Method</summary>

#### GraphQL query

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
        hasNextPage
      }
      totalCount
    }
  }
}
```

#### Shell Script
see `scripts/language_bytes.sh`.

</details>

## Languages
- Japanese: native
- English: intermidiate (not business level)
- other languages: via machine translate

## Skills
{{link or include|./components/en/SKILL.md}}

## Properties
{{link or include|./components/en/PROPERTY.md}}

## Repos
- [gist](https://gist.github.com/KisaragiEffective)

### Library
- [dateformat.js](https://github.com/KisaragiEffective/dateformat.js)
- [scala-simd-wrapper](https://github.com/KisaragiEffective/scala-simd-wrapper)

### Product
{{link or include|./components/en/PRODUCT.md}}

## Notes
- [ksrgte.ch](https://services.ksrgte.ch) is my domain.
- Icon: from [picrew.me](https://picrew.me/image_maker/36849), license: allowed redistribute, modify
- <small>for trusted user: see [@KisaragiEffective/private](https://github.com/KisaragiEffective/private)</small>
- This README is validated by [GitHubActions](https://github.com/KisaragiEffective/KisaragiEffective/blob/live/.github/workflows/markdown-lint.yml).
