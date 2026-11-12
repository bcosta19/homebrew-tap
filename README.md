# Homebrew Tap for YouTFast

Personal Homebrew tap for [YouTFast](https://github.com/bcosta19/youtfast)
(macOS 15+ Apple Silicon).

## Install

```sh
brew install --cask bcosta19/tap/youtfast
```

## Update

```sh
brew upgrade --cask youtfast
```

## Uninstall

```sh
brew uninstall --cask youtfast
```

The cask installs `YouTFast.app`, links the `youtfast` CLI binary, installs
`yt-dlp` and `deno` formulas automatically, and clears `com.apple.quarantine`
on the ad-hoc signed bundle. See the [main repository](https://github.com/bcosta19/youtfast/blob/main/docs/distribution.md)
for platform qualification and signing details.
