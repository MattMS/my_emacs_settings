# My Emacs settings

This repo contains my Emacs configuration folder.

The configuration was started from scratch, with settings added as I need them.
I am still getting started with Emacs, so there are likely better ways to do things.

The settings are heavily based on my Vim key-bindings (using Evil).

Links are likely to where I discovered a setting, or standard documentation.

## Setup

### Windows

Create a symbolic-link at the default Emacs init location:

	mklink /D C:\Users\matt\AppData\Roaming\.emacs.d C:\Users\matt\settings\emacs

Using `/D` to specify the link is to a directory.


## Packages

### Magit

- [Installing from Elpa](https://magit.vc/manual/magit/Installing-from-an-Elpa-Archive.html#Installing-from-an-Elpa-Archive)

### Ranger

- Melpa: ranger
- [GitHub](https://github.com/ralesi/ranger.el)
