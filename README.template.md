# KisaragiEffective
## About scouting policy
求人のスカウトは私が登録した求人プラットフォームを通じて送信するか、あるいは`kisaragi.effective+jobs.handler@gmail.com`に送るものとします。
2024年4月21日0時0分 (日本時間) から、自動化されたスカウトへの対策として、それ以外のメールアドレスまたはダイレクトメッセージなどの送信者と私のみが閲覧可能な経路で受信した場合、基礎費用として10万円、加えてメール本文の文字数×105.86円 (端数切り上げ) を送信した者あるいは送信した企業に請求するものとします。なお、ここで言う「文字数」とは、本文をUnicodeのグリフの列として見たとき、そのグリフの列に含まれるコードポイントの数を指すものとします。

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
