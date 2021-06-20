# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

This repository contains [machine-specific configuration](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#how-can-i-have-different-groups-of-tasks-for-different-hosts-with-different-configurations) to accompany my dotfiles.

## Installation

```bash
git clone --recursive git@github.com:feuerente/dotfiles.git ~/.dotfiles
```

### For installing a predefined profile:

```bash
~/.dotfiles ./install-profile <profile> [<configs...>]
```
See [meta/profiles/](.meta/profiles) for available profiles

### For installing single configurations:

```bash
~/.dotfiles ./install-standalone <configs...>
```
See [meta/configs/](.meta/configs) for available configurations

You can run these installation commands safely multiple times.

_*Note:*_ Any configuration can be run as sudo by adding  `-sudo` to the end of it when invoking the install script.
*DO NOT* run the script as a sudoer.

# License

Unlicense: This is free and unencumbered software released into the public domain.
