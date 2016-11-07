# 🎒 brewpack

Automate your Mac setup.

- Install your favourite tools and apps on your new Mac with a single command

- Join a new team and automatically install the things you need

## Installation

```sh
brew install rouanw/brewpack/brewpack
```

You'll need to have [Homebrew](http://brew.sh/) installed.

## Usage

### `brewpack install`

__brewpack__ needs a `packages.yml` in the directory it's run from. Use it to specify what you'd like installed:

```yml
---
packages:
  - git
  - mongodb
casks:
  - atom
  - docker
  - google-chrome
```

Run `brewpack install`.

The specified `packages` will be installed using [Homebrew](http://brew.sh/) and the `casks` will be installed using [Homebrew-Cask](https://github.com/caskroom/homebrew-cask).

### `brewpack install <package>`

Instead of directly using homebrew to install what you need, proxy the call through __brewpack__ so it gets saved to your `packages.yml` file.

#### Examples:

Install a core homebrew package and save it to your `packages.yml`:

`brewpack install --save git`

Install a cask (usually an app) from [hombrew-cask](https://github.com/caskroom/homebrew-cask) and save it to your `packages.yml`:

`brewpack install --cask --save google-chrome`

### `brewpack install --repo <github-repo>`

Install a formulae from a `packages.yml` hosted on GitHub:

`brewpack install --repo rouanw/my-packages`

Where `rouanw` is the GitHub user and `my-packages` is the name of the repo. It needs to have a `packages.yml` at its root.

If you regularly push your personal packages repo to GitHub, this is an easy way to get yourself set up on a new Mac.

This can also be really handy for sharing a team setup. Imagine you join the Platform team at FunCorp:

`brewpack install --repo funcorp/platform`
