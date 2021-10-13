# PYENV

## INSTALL

```sh
cd ~/Downloads
curl https://pyenv.run | bash
pyenv update
```

## CONFIGURE

For `fish` :

```sh
cat conf/pyenv.fish >> $HOME/.config/fish/config.fish
source $HOME/.config/fish/config.fish
```


## TIPS

Install a python version :

```sh
# install a python version
pyenv install 3.8.12
# create a python environment with this version
pyenv virtualenv 3.8.12 myenv
# activate the environment
pyenv activate myenv
python -V
# exit the environment
pyenv deactivate
```
