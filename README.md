# Homebrew Bumpster

[![CI](https://github.com/phoenixweiss/homebrew-bumpster/actions/workflows/ci.yml/badge.svg)](https://github.com/phoenixweiss/homebrew-bumpster/actions/workflows/ci.yml)

Official Homebrew tap for [Bumpster](https://github.com/phoenixweiss/Bumpster).

## Install

```sh
brew install phoenixweiss/bumpster/bumpster
```

The fully qualified command trusts only the selected Formula. To use the short
name, add the tap and explicitly trust the Bumpster Formula first:

```sh
brew tap phoenixweiss/bumpster
brew trust --formula phoenixweiss/bumpster/bumpster
brew install bumpster
```

## Update

```sh
brew upgrade bumpster
```

## Uninstall

```sh
brew uninstall bumpster
```

The Formula installs only the Bumpster CLI runtime and provides both
`bumpster` and `bump` commands.

## Author

Created and maintained by [Pavel Tkachev (@phoenixweiss)](https://github.com/phoenixweiss).

## License

This Homebrew tap is available under the [MIT License](LICENSE). Bumpster
itself is licensed separately in the
[main repository](https://github.com/phoenixweiss/Bumpster/blob/main/LICENSE).
