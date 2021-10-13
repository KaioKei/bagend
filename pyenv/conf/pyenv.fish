
# PYENV
set -x PYENV_VIRTUALENV_DISABLE_PROMPT 1
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-interactive; and pyenv init --path | source
status --is-interactive; and pyenv virtualenv-init - | source