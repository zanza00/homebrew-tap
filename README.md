# zanza00 Homebrew tap

Install source-fetch on macOS or Linux (Intel or ARM64):

```sh
brew install zanza00/tap/source-fetch
```

Upgrade to the latest packaged release:

```sh
brew update
brew upgrade source-fetch
```

The formula installs prebuilt binaries from
[source-fetch releases](https://github.com/zanza00/source-fetch/releases),
verifies their SHA-256 checksums, and includes the Git dependency.

The update workflow checks the latest stable release every hour. GitHub may
delay scheduled runs. To update immediately, run **Update source-fetch** from
the Actions tab, or use:

```sh
gh workflow run update.yml --repo zanza00/homebrew-tap
```

It uses this repository's `GITHUB_TOKEN`; no additional secret is needed.
Only complete stable releases with all four supported archives and their
checksums can update the formula.
