# Sendmux Homebrew tap

Homebrew formulae for Sendmux developer tools.

## Install

Install the Sendmux CLI:

```sh
brew install sendmux/tap/sendmux
```

Check the installed command:

```sh
sendmux --version
sendmux --help
```

## Upgrade

```sh
brew update
brew upgrade sendmux
```

## Formulae

| Formula | Installs | Documentation |
| --- | --- | --- |
| `sendmux` | The `sendmux` CLI | [sendmux.ai/docs/cli](https://sendmux.ai/docs/cli) |

## Maintainers

Update `Formula/sendmux.rb` from the SDK release workflow after `@sendmux/cli` publishes to npm.

Local verification:

```sh
brew audit --strict --new --online sendmux/tap/sendmux
brew install --build-from-source sendmux/tap/sendmux
brew test sendmux/tap/sendmux
```
