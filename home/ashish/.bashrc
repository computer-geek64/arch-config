export PATH="$PATH:/opt/bin"
export EDITOR="/usr/bin/vim"
export BARVA_SOURCE=$(/usr/share/barva/pa-get-default-monitor.sh)
#export BARVA_TARGET='#00FF00' # Green
#export BARVA_TARGET='#00FFFF' # Aqua
#export BARVA_TARGET='#FF8000' # Orange
export BARVA_TARGET='#FF0000' # Red

alias ls='colorls'
alias cat='lolcat'

source ~/.enhancd/init.sh

echo -e '\e[H\e[2J           \e[1;36m.
          \e[1;36m/#\
         \e[1;36m/###\      \e[1;37m               #     \e[1;36m| *
        \e[1;36m/p^###\     \e[1;37m a##e #%" a#"e 6##%  \e[1;36m| | |-^-. |   | \ /
       \e[1;36m/##P^q##\    \e[1;37m.oOo# #   #    #  #  \e[1;36m| | |   | |   |  X
      \e[1;36m/##(   )##\   \e[1;37m%OoO# #   %#e" #  #  \e[1;36m| | |   | ^._.| / \ \e[0;37m
     \e[1;36m/###P   q#,^\
    \e[1;36m/P^         ^q\ \e[0;37m'

/usr/bin/barva &

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
