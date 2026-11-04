<p align="center">
  <img src="assets/joflux-readme-hero.svg" width="960" alt="joflux - move the whole org, verify every repo. GitHub organizations into Forgejo or Codeberg, one step at a time, each step leaving JSON you can inspect.">
</p>

<p align="center">
  <a href="https://github.com/netspeedy/joflux/releases"><img src="https://img.shields.io/github/v/release/netspeedy/joflux?sort=semver&style=flat-square" alt="Release"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-2EA043?style=flat-square" alt="License"></a>
  <a href="https://github.com/netspeedy/homebrew-joflux"><img src="https://img.shields.io/badge/Homebrew-tap-FFDD00?style=flat-square&logo=homebrew&logoColor=black" alt="Homebrew tap"></a>
  <a href="https://github.com/netspeedy/joflux"><img src="https://img.shields.io/badge/source-netspeedy%2Fjoflux-00897B?style=flat-square" alt="Source"></a>
  <a href="https://buymeacoffee.com/soakes"><img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-support-FFDD00?style=flat-square&logo=buymeacoffee&logoColor=000000" alt="Buy Me a Coffee"></a>
</p>

---

This is the Homebrew tap for [joflux](https://github.com/netspeedy/joflux). joflux moves the repositories of a GitHub organization into a Forgejo-compatible instance such as Codeberg in five separate stages, each of which writes its results as JSON you can read and keep.

## Install

```bash
brew tap netspeedy/joflux
brew install joflux
```

The formula installs joflux on Homebrew's Python 3.13 on macOS and Linux.

> On recent Homebrew, new third-party taps require explicit trust. If installation is refused, run `brew trust netspeedy/joflux` once, then `brew install joflux`.

## Try it

Copy the [example config](https://github.com/netspeedy/joflux/blob/main/joflux.toml.example) to `joflux.toml`, set your GitHub and Forgejo organizations in it, put both tokens in the environment, and export the inventory. `export` only reads from GitHub, so it's the safe first step:

```bash
export JOFLUX_GITHUB_TOKEN="ghp_your_github_token"
export JOFLUX_FORGEJO_TOKEN="your_forgejo_token"
joflux --config joflux.toml export
```

It lists the organization and saves the inventory:

```text
02:39:52 - INFO - Fetching repositories from GitHub org: my-github-org
02:39:52 - INFO - Found 14 repositories
02:39:52 - INFO - Inventory saved: migration_output/repos-inventory.json
02:39:52 - INFO - Exported 14 repositories (3 private, 1 forks, 1 archived)
```

Review `migration_output/repos-inventory.json`, then run `migrate`, `monitor`, `verify` and finally `archive`, which asks for confirmation before it archives anything on GitHub. The [README](https://github.com/netspeedy/joflux#readme) covers each stage, the files it writes and the exit codes.

## Upgrade or remove

```bash
brew upgrade joflux
brew uninstall joflux
brew untap netspeedy/joflux
```

## Available formulae

| Formula | Description |
|---|---|
| [`joflux`](Formula/joflux.rb) | Bulk migration workflow for moving GitHub organizations to Forgejo or Codeberg |

## About this tap

This repository only packages [`Formula/joflux.rb`](Formula/joflux.rb). The joflux release workflow rewrites it for each stable [release](https://github.com/netspeedy/joflux/releases); release candidates aren't published here. Please open issues in the [main repository](https://github.com/netspeedy/joflux/issues).

The banner at the top of this page and the repository's social preview image are generated. Edit the copy, layout or timing in `.github/scripts/build_readme_hero.py` and run it to rebuild `assets/joflux-readme-hero.svg` and `assets/joflux-social-preview.png`; the preview is uploaded by hand under Settings, since GitHub has no API for it. The script downloads the font subsets from Google Fonts, so it needs network access, and renders the preview with headless Chrome or Chromium.

## License

Copyright © 2026 [Simon Oakes](https://github.com/soakes). Released under the [MIT License](LICENSE).

This tap only packages the [joflux](https://github.com/netspeedy/joflux) formula, an unofficial community tool that is not affiliated with, endorsed by, or sponsored by GitHub, Forgejo, or Codeberg.
