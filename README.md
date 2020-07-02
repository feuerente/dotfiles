# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

This repository contains [machine-specific configuration](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks) to accompany my dotfiles.

## Installation

```bash
git clone --recursive git@github.com:feuerente/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

For installing a predefined profile:
```bash
./install-profile <profile> [<configs...>]
# see meta/profiles/ for available profiles
```

For installing single configurations:
```bash
./install-standalone <configs...>
# see meta/configs/ for available configurations
```

You can run these installation commands safely multiple times, if you think that helps with better installation.

## Contents

### Profiles

```
meta/profiles/
```
### Dotbot configurations

```
meta/configs/
```
