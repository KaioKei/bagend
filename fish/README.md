# FISH SHELL

Fish shell is a smart and user-friendly command line shell for macOS, Linux, and the rest of the family.

By experience, I find it very powerfull and provide lovely functionnalities such as smart tab-autocompletion, a browse matching engine by writting keywords combined with up/down and nice plugins that will be shown later.

If you are not ok with fish, you can check _zsh_ shell. If you are not ok with _zsh_ shell, you can use _bash_ shell. If you are not ok with _bash_ shell, go fish yourself dude.

**WARNING : This installation requires reboot processes**


## FISH

### Install
 
```sh
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get install fish
```

### Configure
 
```sh
mkdir -p ~/.config/fish
cp conf/config.fish ~/.config/fish/
chsh -s /usr/bin/fish
```

## POWERLINE

### Install

```sh
pip install powerline-status
sudo cp ~/.local/bin/powerline* /usr/local/bin
# status location must be bound to your python version :
pip show powerline-status
```

Fonts :

```sh
mkdir -p ~/Downloads/Powerline
cd ~/Downloads/Powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# Update font cache
fc-cache -vf ~/.local/share/fonts
```

Symbols :

```sh
cd ~/Downloads/Powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```


## OH-MY-FISH

### Install

```sh
cd ~/Downloads
git clone https://github.com/oh-my-fish/oh-my-fish
cd oh-my-fish/bin
./install
omf update
```

Themes : 

```sh
# list themes
omf theme
# install theme
omf install <theme_name>
# reboot to apply powerline fonts
sudo reboot
```

Themes list :

* [OMF themes github](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)


## Windows ssh terminals integration

***MobaXterm***  
To apply font and _Powerline_ symbols to _MobaXterm_ on windows, download a font from [powerline-font git repository](https://github.com/powerline/fonts).  
Then go to:  
_Settings -> Configuration -> Terminal_  
and select the downloaded font.  
Finally, right-click on a session and go to:  
_Edit session -> SSH -> Terminal settings_  
and select the downloaded font.
