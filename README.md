# My nvim configs

- Based on [LunarVim/Launch.vim](https://github.com/LunarVim/Launch.nvim).
- Features nvim-tree and a vscode like UI.
- Don't forget to run command `pip install pynvim`, `sudo brew install ripgrep` and `npm i -g neovim` as is specified below in the original README of [LunarVim/Launch.vim](https://github.com/LunarVim/Launch.nvim).
- *Important*: for MacOS users, check if you have `trash` installed by `$which trash`. If zsh could not find it, simply install it by `$brew install trash`, as this will affect the `D` (trash the file/dir) operation in nvim-tree file explorer. I was baffled by `'trash' is not an executable` for an awfully long time this afternoon as the search engine couldn't even helped find another person who was also experiencing this error message. Read more about this in this issue [#1366](https://github.com/nvim-tree/nvim-tree.lua/issues/1366)
- To apply changes of nvim-tree, add the configs in `init.lua`.

My Changes:
- Always open file explorer at startup.
- Auto close nvim-tree if it's the last panel.

---
```
    ✯                              .°•    |    
    __     °    •                __      / \   
   / /   ____ ___  ______  _____/ /_    | O |  
  / /   / __ `/ / / / __ \/ ___/ __ \   | O |  
 / /___/ /_/ / /_/ / / / / /__/ / / /  /| | |\ 
/_____/\__,_/\__,_/_/ /_/\___/_/ /_/  /_(.|.)_\
```

This config will provide a modular starting point for anyone looking to use Neovim as their IDE. It is meant to be simple and easy to understand and extend. Use it as a base for your own config or just take individual pieces.

All the included plugins are pinned to a version that ensures they are compatible and will not update potentially introducing errors into your config. For every Neovim release I will update this repo along with the community to keep it up to date with the newest versions.

As I mentioned, this config is meant as a starting point for people new to Neovim who want a familiar IDE experience. The config has a very simple structure that makes it easy to add new plugins.

## Install Neovim 0.9

You can install Neovim with your package manager e.g. brew, apt, pacman etc.. bus remember that when you update your packages Neovim may be upgraded to a newer version.

If you would like to make sure Neovim only updates when you want it to than I recommend installing from source: [instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

## Install the config

Make sure to remove or backup your current `nvim` directory

```sh
git clone https://github.com/LunarVim/Launch.nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

**NOTE** Some are already setup as examples, remove them if you want

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.

\- Edsger W. Dijkstra
