# homebrew-joflux

Homebrew tap for [joflux](https://github.com/netspeedy/joflux), a CLI workflow
for moving GitHub organization repositories to Forgejo-compatible instances such
as Codeberg.

## Install

After the first stable release is published:

```bash
brew tap netspeedy/joflux
brew install joflux
```

Until then, the formula can be installed from the source branch:

```bash
brew install --HEAD netspeedy/joflux/joflux
```

## Formulae

| Formula | Description |
|---|---|
| [`joflux`](Formula/joflux.rb) | Bulk GitHub-to-Forgejo organization migration workflow |

## About this tap

This repository only packages the Homebrew formula. It is updated automatically
from stable releases in the main [joflux](https://github.com/netspeedy/joflux)
repository.

## License

Copyright (c) 2026 Simon Oakes. Released under the [MIT License](LICENSE).

joflux is an unofficial community tool. It is not affiliated with, endorsed by,
or sponsored by GitHub, Forgejo, or Codeberg.
