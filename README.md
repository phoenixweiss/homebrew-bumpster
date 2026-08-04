# Homebrew Bumpster

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
