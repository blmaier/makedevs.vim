# About

Vim syntax highlighting for `makedevs` permission files.

`makedevs` is a tool for creating files and devices. It's used by the Busybox
and Buildroot projects. For makedevs documentation see the [BusyBox Makedevs
source](https://git.busybox.net/busybox/tree/miscutils/makedevs.c) and
[Buildroot Manual on
Makedevs](https://buildroot.org/downloads/manual/manual.html#makedev-syntax)

# Installation

Add makedevs.vim to your runtime path using your preferred Vim plugin manager.

## [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'blmaier/makedevs.vim'
```

# File detection

There is no unique filetype extension for `makedevs` files, so this plugin
matches against filenames. The following patterns will activate syntax
highlighting.

- `*device_table*.txt`
- `*permissions.txt`
