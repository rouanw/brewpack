# 🎒 brewpack

Automate your Mac setup.

## Dependencies
Install [Homebrew](http://brew.sh/).

## Installation

```sh
brew install rouanw/brewpack/brewpack
```

Please note that the formula currently installs what's on master so it may be unstable.

## Usage

Create a `packages.yml` file somewhere handy on your machine. Use it to specify what you'd like installed:

```yml
packages:
  - git
casks:
  - atom
```

Run `brewpack install`.

The specified `packages` will be installed using [Homebrew](http://brew.sh/) and the `casks` will be installed using [Homebrew-Cask](https://github.com/caskroom/homebrew-cask).
