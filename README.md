# KisaragiEffective
## Stats

[![github stats](https://github-readme-stats.vercel.app/api?username=KisaragiEffective&count_private=true&show_icons=true&theme=dark)](https://github.com/anuraghazra/github-readme-stats)
[![languages](https://github-readme-stats.vercel.app/api/top-langs/?username=KisaragiEffective&theme=dark)](https://github.com/anuraghazra/github-readme-stats)

### Bytes of code in this account

As of 2023-12-08 (JST):

```json
{
  "Rust": 678122,
  "Kotlin": 558696,
  "Java": 371604,
  "JavaScript": 258062,
  "TypeScript": 179146,
  "Shell": 149959,
  "HTML": 147981,
  "PHP": 90023,
  "Scala": 81298,
  "SCSS": 65091,
  "C#": 20112,
  "Lean": 12998,
  "Blade": 11591,
  "Python": 3488,
  "PowerShell": 1944,
  "Dockerfile": 1606,
  "CSS": 1528,
  "Makefile": 1499,
  "Ruby": 650,
  "Procfile": 52
}
```

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
<details><summary>content of ./components/en/SKILL.md</summary>

### Programming languages
- Java, Kotlin, Scala: production level
- VBA, C#, PHP, Ruby, Rust, JavaScript, TypeScript: hobby level
- Python, [Dirt](https://dart.dev/): not so experienced

### Query languages
- SQL: production level
- Excel(\*1), [GraphQL](https://graphql.org/): hobby level

\*1: can use the functions without any inconvenience

### Document system
- Javadoc, Scaladoc: production level
- Microsoft Word(\*2), [MediaWiki](https://www.mediawiki.org/wiki/MediaWiki), Markdown: hobby level

\*2: can typing and formatting without any inconvenience

### HTTP
- apache configuration, Laravel: hobby level

### Other tools
- **[git](https://git-scm.com/)**, **[GitHub](https://github.com)**: hobby level
- **[Ubuntu](https://ubuntu.com/)**, [FreeBSD](https://www.freebsd.org/ja/): hobby level
- [bash](https://linuxjm.osdn.jp/html/GNU_bash/man1/bash.1.html), [PowerShell](https://docs.microsoft.com/ja-jp/powershell/), usage of command-line tools: hobby level

</details>

## Properties
<details><summary>content of ./components/en/PROPERTY.md</summary>

- typing speed
  - up to 5.5 type/sec
  - can type 700 Japanese characters in 10 minutes
- have access to JetBrains products via [open-source license](https://www.jetbrains.com/ja-jp/community/opensource)
  - applied repository: [GiganticMinecraft/SeichiAssist](https://github.com/GiganticMinecraft/SeichiAssist)

</details>

## Repos
- [gist](https://gist.github.com/KisaragiEffective)

### Library
- [dateformat.js](https://github.com/KisaragiEffective/dateformat.js)
- [scala-simd-wrapper](https://github.com/KisaragiEffective/scala-simd-wrapper)

### Product
<details><summary>content of ./components/en/PRODUCT.md</summary>

### Standalone
#### Working
- [neosvr-inventory-management](https://github.com/KisaragiEffective/neosvr-inventory-management) - Inventory clean up helper for inventory in NeosVR

#### Archived
- [GiganticMinecraft/SeichiRanking](https://github.com/GiganticMinecraft/SeichiRanking) - maintenance
- [KisaragiEffective/webhook-handler](https://github.com/KisaragiEffective/webhook-handler)
- [KisaragiEffective/portfolio.ksrgte.ch](https://github.com/KisaragiEffective/portfolio.ksrgte.ch)

### Addon/Plugin
#### Bukkit plugins
- [GiganticMinecraft/SeichiAssist](https://github.com/GiganticMinecraft/SeichiAssist) - core maintainer
- [GiganticMinecraft/SeichiAssistBE](https://github.com/GiganticMinecraft/SeichiAssistBE)
- [WGTabCompleter](https://github.com/KisaragiEffective/WGTabCompleter)

#### for FabricMC
- [sign-picture-ported](https://github.com/KisaragiEffective/sign-picture-ported) - alternate version of [Team-Fruit/SignPicture](https://github.com/Team-Fruit/SignPicture)

#### for NeosVR
- [DoNotIncludeDefaultResourceForSize](https://github.com/KisaragiEffective/DoNotIncludeDefaultResourceForSize) - exclude built-in fonts from displayed size
- [EnableSitModeOnLaunch](https://github.com/KisaragiEffective/EnableSitModeOnLaunch) - turn on sit mode since launched
- [NoPulseFromDisplayImpulse](https://github.com/KisaragiEffective/NoPulseFromDisplayImpulse) - turn off effect shown by Impulse's Display

</details>

## Notes
- [ksrgte.ch](https://services.ksrgte.ch) is my domain.
- Icon: from [picrew.me](https://picrew.me/image_maker/36849), license: allowed redistribute, modify
- <small>for trusted user: see [@KisaragiEffective/private](https://github.com/KisaragiEffective/private)</small>
- This README is validated by [GitHubActions](https://github.com/KisaragiEffective/KisaragiEffective/blob/live/.github/workflows/markdown-lint.yml).
