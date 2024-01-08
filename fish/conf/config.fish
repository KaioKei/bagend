
# TMUX
if status is-interactive
and not set -q TMUX
  exec tmux
end
~/.

# ENVIRONMENT
#set -x PATH $HOME/.local/bin $PATH
#set -gx TERM xterm-256color

# JAVA
# set -x JAVA_HOME /usr/lib/jvm/java-1.11.0-openjdk-amd64
#set -x JAVA_HOME /usr/lib/jvm/java-1.15.0-opendjdk-amd64

# PYTHON
#set -x PATH /home/kaio/.pyenv/shims/python $PATH

# PYENV
set -x PYENV_VIRTUALENV_DISABLE_PROMPT 1
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source
status is-interactive; and pyenv init --path | source
status --is-interactive; and pyenv virtualenv-init - | source


# GO
#set -x GOROOT $HOME/Applications/go

set -x GOPATH $HOME/Applications/go/bin
# GOENV
set -Ux GOENV_ROOT "$HOME/.goenv"
set -U fish_user_paths $GOENV_ROOT/bin $fish_user_paths
status is-interactive; and source (goenv init -|psub)
set -x PATH $GOROOT/bin $PATH
set -x PATH $GOPATH/bin $PATH


# KUBERNETES
#set -x KUBECONFIG "$HOME/.kube/config"
#set -x KUBECONFIG "$HOME/.kube/edge-node-1:$HOME/.kube/edge-node-2"
set -x KUBECONFIG "$HOME/.kube/fcos-k3s-one-node.yaml:"


# ENV INITIALIZATIONS MUST BE PLACED AT THE END SINCE IT MANIPULATES PATH
#set -x PATH /home/kaio/Projects/theresis/freyja/bin $PATH

# NVM
#set --universal nvm_default_version v18

# VAGRANT
set -x VAGRANT_DEFAULT_PROVIDER libvirt


# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

set -x KUBECONFIG /home/kaio/.kube/fcos-k3s-one-node:
