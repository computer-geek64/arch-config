export PATH="$PATH:/opt/bin"
export EDITOR="/usr/bin/vim"

alias ls='colorls'
alias cat='lolcat'

source ~/.enhancd/init.sh

echo -e ' \e[H\e[2J           \e[0;36m.
          \e[0;36m/ \
         \e[0;36m/   \      \e[1;37m               #     \e[1;36m| *
        \e[0;36m/^.   \     \e[1;37m a##e #%" a#"e 6##%  \e[1;36m| | |-^-. |   | \ /
       \e[0;36m/  .-.  \    \e[1;37m.oOo# #   #    #  #  \e[1;36m| | |   | |   |  X
      \e[0;36m/  (   ) _\   \e[1;37m%OoO# #   %#e" #  #  \e[1;36m| | |   | ^._.| / \ \e[0;37m
     \e[1;36m/ _.~   ~._^\
    \e[1;36m/.^         ^.\ \e[0;37m'

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
