# 🎒 brewpack

Automate your Mac setup.

- Install your favourite tools and apps on your new Mac with a single command

- Join a new team and automatically install the things you need

## Installation

```sh
brew install rouanw/brewpack/brewpack
```

You'll need to have [Homebrew](http://brew.sh/) installed.

## Get started


```sh
# create a packages.yml file
# if you already use homebrew, brewpack will include your installed formulae
brewpack init

# install something new
brewpack install --save git
brewpack install --save --cask google-chrome

# joined a new team? get the stuff you need
brewpack install --repo example-company/funteam

# got a new Mac? get all your stuff back.
brewpack install
```

It's recommended that you keep your `packages.yml` file somewhere other than just your Mac. Push it to GitHub or sync it with something like Dropbox. Take a look at [my `packages.yml`](https://github.com/rouanw/packages/blob/master/packages.yml) for an example.

## Bugs & feature requests

Brewpack is still new and I need your feedback to shape it. [Open an issue](https://github.com/rouanw/brewpack/issues/new) and let me know.

## Contributing

Pull requests are very welcome. If you're unsure about the functionality you'd like to add, open an issue first so we can talk about it.

# API

## `brewpack install`

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

## `brewpack install <package>`

Instead of directly using homebrew to install what you need, proxy the call through __brewpack__ so it gets saved to your `packages.yml` file.

### Examples:

Install a core homebrew package and save it to your `packages.yml`:

`brewpack install --save git`

Install a cask (usually an app) from [hombrew-cask](https://github.com/caskroom/homebrew-cask) and save it to your `packages.yml`:

`brewpack install --cask --save google-chrome`

## `brewpack install --repo <github-repo>`

Install a formulae from a `packages.yml` hosted on GitHub:

`brewpack install --repo rouanw/my-packages`

Where `rouanw` is the GitHub user and `my-packages` is the name of the repo. It needs to have a `packages.yml` at its root.

If you regularly push your personal packages repo to GitHub, this is an easy way to get yourself set up on a new Mac.

This can also be really handy for sharing a team setup. Imagine you join the Platform team at FunCorp:

`brewpack install --repo funcorp/platform`


## `brewpack init`

Run `brewpack init` to create a new `packages.yml` file in your current directory. If you've already been using Homebrew, it will include the formulae you already have installed.
