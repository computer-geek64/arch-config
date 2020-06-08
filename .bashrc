export PATH="$PATH:/opt/bin"
export EDITOR="/usr/bin/vim"

alias ls='colorls'
alias cat='lolcat'

source ~/.enhancd/init.sh

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
