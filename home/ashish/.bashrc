export PATH="$PATH:/opt/bin"
export EDITOR="/usr/bin/vim"

alias ls='colorls'
alias cat='lolcat'
alias grep='grep --color=auto'
alias python3='python3 -B'
alias cnn='youtube-dl $(youtube-dl -g https://www.livenewsnow.com/american/cnn-news-usa.html --add-header "Referer: https://www.livenewsnow.com/" --no-warnings) --add-header "Referer: https://www.livenewsnow.com/" -o - | mpv -'

source ~/.enhancd/init.sh

echo -e '\e[H\e[2J           \e[1;36m.
          \e[1;36m/#\
         \e[1;36m/###\      \e[1;37m               #     \e[1;36m| *
        \e[1;36m/p^###\     \e[1;37m a##e #%" a#"e 6##%  \e[1;36m| | |-^-. |   | \ /
       \e[1;36m/##P^q##\    \e[1;37m.oOo# #   #    #  #  \e[1;36m| | |   | |   |  X
      \e[1;36m/##(   )##\   \e[1;37m%OoO# #   %#e" #  #  \e[1;36m| | |   | ^._.| / \ \e[0;37m
     \e[1;36m/###P   q#,^\
    \e[1;36m/P^         ^q\ \e[0;37m'

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
