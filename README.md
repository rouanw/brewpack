# 🎒 brewpack

Automate your Mac setup.

## Dependencies
Install [Homebrew](http://brew.sh/).

## Installation

```sh
brew install rouanw/brewpack/brewpack
```

Please note that the formula currently installs what's on master so it may be unstable.

## Overview

__brewpack__ needs a `packages.yml` in the directory it's run from. Use it to specify what you'd like installed:

```yml
packages:
  - git
casks:
  - atom
```

Run `brewpack install`.

The specified `packages` will be installed using [Homebrew](http://brew.sh/) and the `casks` will be installed using [Homebrew-Cask](https://github.com/caskroom/homebrew-cask).

## Usage

### Install

Install formulae listed in `packages.yml`:

`brewpack install`


#### Installing a single package

Install a package from homebrew core:

`brewpack install <package>`

e.g. `brewpack install git`

Install a core homebrew package and save it to `packages.yml`:

`brewpack install --save git`

Install a cask (usually an app) from [hombrew-cask](https://github.com/caskroom/homebrew-cask):

`brewpack install --cask <cask>`

e.g. `brewpack install --cask google-chrome`

Install a package from hombrew-cask and save it to `packages.yml`:

`brewpack install --save --cask google-chrome`

#### Sharing brewpacks

Install a formulae from a `packages.yml` hosted on GitHub:

`brewpack install --repo <github_repo>`

e.g. `brewpack install --repo rouanw/test-packages`

This can be handy for sharing a team setup.
