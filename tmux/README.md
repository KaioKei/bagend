# TMUX

Tmux is a software application that can be used to multiplex several virtual consoles, allowing a user to access multiple separate terminal sessions inside a single terminal window or remote terminal session.


## INSTALL

```sh
sudo apt install tmux
```

## CONFIGURE

```sh
mkdir -p ~/.config/tmux
cp sources/* ~/.config/tmux
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
```

Automatic start in `fish` :

```sh
cat sources/tmux.fish >> $HOME/.config/fish/config.fish
```

## TIPS

### Commons

* **Ctrl-b [** : view mode. Mouse scroll can be used, such as *Page Down* or *Page Up*.
  * **g** : *goto_line* in view mode. Enter the number of the line you want to go to.

### windows

* **Ctrl-b c** : create a new window
* **Ctrl-b d** : delete window or current pane
* **Ctrl-b %** : split pane vertically
* **Ctrl-b "** : split pane horizontally

### commands

* **:kill-session** : kill all windows at once

## TROUBLESHOOTING

### Powerline characters not found in defined path

The default path for powerline binding with tmux is : `/usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf` 

But it is possible that the powerline binding is located at : `~/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf`

Replace the *tmux* configuration `source "<path>"` with the proper path.
