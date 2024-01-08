# NEOVIM

Neovim is a refactor, and sometimes redactor, in the tradition of Vim (which itself derives from Stevie). It is not a rewrite but a continuation and extension of Vim for users who want the good parts of Vim, and more.

## REQUIREMENTS

For `TagBar` Plugin :

```sh
# tagbar plugin requirements
sudo apt install php ctags exuberant-ctags
```

For `Python autocompletion` :

```sh
pip install pynvim jedi
```

## INSTALL

* [https://github.com/neovim/neovim/wiki/Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## CONFIGURE


```sh
set NVIM $(realpath nvim/)
ln -s $NVIM ~/.config/nvim
```

Run `nvim` and install neovim plugins :

```sh
:PlugClean
:PlugInstall
```

Quit `nvim` with `:qa!` and restart `nvim`.

## TIPS

### NERDTREE

* **Ctrl-w <h,j,k,l>** : switch to left, down, up or right pane
* **Ctrl-m a** : create a new node or a new file
* **Ctrl-m m** : move a node or a file to a new location
* **Shift-I** : display hidden nodes and hidden files
* **r** : refresh current node
* **o** : open node or open file
* **i** : open file by splitting horizontally
* **s** : open file by splitting vertically

### Python Autocompletion

- **Navigate through suggestions**:

<Ctrl-n> : Next suggestion
<Ctrl-p> : Previous suggestion
