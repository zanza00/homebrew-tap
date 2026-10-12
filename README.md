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

GoReleaser updates the formula when source-fetch publishes a release. The
release workflow uses the `HOMEBREW_TAP_TOKEN` secret configured in the
source-fetch repository, with Contents read/write access to this tap.

Installation tests run on Linux and both Intel and ARM64 macOS when the formula
changes. There is no scheduled polling.
