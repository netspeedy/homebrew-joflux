<p align="center">
  <img src="assets/joflux-readme-hero.png" width="960" alt="joflux - GitHub org to Forgejo migration workflow">
</p>

<p align="center">
  <a href="https://github.com/netspeedy/joflux/releases"><img src="https://img.shields.io/github/v/release/netspeedy/joflux?sort=semver&style=flat-square" alt="Release"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-2EA043?style=flat-square" alt="License"></a>
  <a href="https://github.com/netspeedy/homebrew-joflux"><img src="https://img.shields.io/badge/Homebrew-tap-FFDD00?style=flat-square&logo=homebrew&logoColor=black" alt="Homebrew tap"></a>
  <a href="https://github.com/netspeedy/joflux"><img src="https://img.shields.io/badge/source-netspeedy%2Fjoflux-00897B?style=flat-square" alt="Source"></a>
  <a href="https://buymeacoffee.com/soakes"><img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-support-FFDD00?style=flat-square&logo=buymeacoffee&logoColor=000000" alt="Buy Me a Coffee"></a>
</p>

---

## Install

```bash
brew tap netspeedy/joflux
brew install joflux
```

> On recent Homebrew, new third-party taps require explicit trust. If installation is refused, run `brew trust netspeedy/joflux` once, then `brew install joflux`.

Export a GitHub repository inventory:

```bash
joflux --config joflux.toml export
```

## Available formulae

| Formula | Description |
|---|---|
| [`joflux`](Formula/joflux.rb) | Bulk GitHub-to-Forgejo organization migration workflow |

## About this tap

This repository only packages the formula at [`Formula/joflux.rb`](Formula/joflux.rb). It is updated automatically on each [joflux release](https://github.com/netspeedy/joflux/releases). For source code, issues, and documentation, see the [main repository](https://github.com/netspeedy/joflux).

## License

Copyright © 2026 [Simon Oakes](https://github.com/soakes). Released under the [MIT License](LICENSE).

This tap only packages the [joflux](https://github.com/netspeedy/joflux) formula, an unofficial community tool that is not affiliated with, endorsed by, or sponsored by GitHub, Forgejo, or Codeberg.
