
# TMUX
#start tmux when fish is opened
if status is-interactive
and not set -q TMUX
  exec tmux
end
