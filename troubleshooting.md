# TROUBLESHOOTING

## 1. CHEZMOI SETUP

### 1.0.1 Impossible to update or upgrade system due to GPG key

If the key is visible when you run :
```sh
sudo apt-key list
```

Then remove the key with :
```sh
sudo apt-key del [key_code]
```

If the key is not visible in list key, go to */etc/apt/source.init.d/* and remove the package which downloads the wrong key.

### 1.1 FISH

### 1.2 Tmux

#### 1.2.1 Oh-My-Fish colors are not correctly diplayed inside Tmux

Run:
```sh
$ export TERM=screen-256color
```

Then open ***~/.tmux.conf*** and insert:  
```python
set -g default-terminal "screen-256color"
```

Finally, restart _Tmux_.

### 1.3 NEOVIM

#### 1.3.1 Strange characters under cursor

Edit _init.vim_ with :
```sh
set guicursor=
```

If the problem is still appearing, add to _init.vim_ :
```sh
let $NVIM_TUI_ENABLE_SHAPE=0
```

### 1.4 POWERLINE

### 1.5 OH-MY-FISH

#### 1.5.1 Some commands are not working after I have changed my theme

Reboot your system
