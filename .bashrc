# .bashrc

[[ $- != *i* ]] && return

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

if [[ ":$PATH:" != *":/home/diego/bin:"* ]]; then
    export PATH="$PATH:$HOME/bin"
fi

alias ls='ls --color=auto --group-directories-first'
alias pfetch='clear; pfetch'
alias gfetch='clear; gfetch'
alias fastfetch='clear; fastfetch'
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xo='sudo xbps-remove -o'
alias gj='git pull; git add .; git commit -m "update"; git push'
alias reset='reset; cat ~/.config/okpal/sequences 2>/dev/null'

export PS1="-> "
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j8"
export EDITOR="vim"
export VISUAL="vim"
export YACC=byacc
export GTK_THEME="Adwaita:dark"
export PF_INFO="ascii title os host kernel uptime pkgs memory wm shell editor palette"
export BROWSER="firefox"

(cat ~/.config/okpal/sequences 2>/dev/null &)
