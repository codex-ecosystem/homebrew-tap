# Codex Ecosystem Homebrew Tap

Homebrew casks for [Codex Ecosystem](https://github.com/codex-ecosystem) apps.

## Install

```sh
brew install --cask codex-ecosystem/tap/codex-agent-bar
open -a AgentBar
```

Homebrew automatically adds this tap when installing a fully qualified cask.

| Cask | Description | Requirements |
| --- | --- | --- |
| [codex-agent-bar](https://github.com/codex-ecosystem/codex-agent-bar) | Monitor Codex quota in the macOS menu bar | Apple Silicon, macOS 13 or later |

Agent Bar needs an available, signed-in Codex installation. The app can discover the Codex CLI bundled with the desktop app or installed separately.

The current Agent Bar release is ad-hoc signed and not notarized, so macOS Gatekeeper may block its first launch. Installing through Homebrew does not change the upstream app's signing status.

## Update

Agent Bar supports in-app updates. To explicitly update it through Homebrew, include `--greedy` because the cask declares `auto_updates true`:

```sh
brew update
brew upgrade --cask --greedy codex-ecosystem/tap/codex-agent-bar
```

## Uninstall

```sh
brew uninstall --cask codex-ecosystem/tap/codex-agent-bar
```

To also remove the app's saved preferences:

```sh
brew uninstall --cask --zap codex-ecosystem/tap/codex-agent-bar
```

## Maintain this tap

Casks are updated automatically by upstream release workflows. See the [Agent Bar release guide](https://github.com/codex-ecosystem/codex-agent-bar/blob/main/docs/homebrew-release.md) for publishing details.
