# .bashrc

[[ $- != *i* ]] && return

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

if [[ ":$PATH:" != *":/home/diego/bin:"* ]]; then
    export PATH="$PATH:$HOME/bin"
fi

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

alias ls='ls --color=auto --group-directories-first'
alias pfetch='clear; pfetch'
alias gfetch='clear; gfetch'
alias fastfetch='clear; fastfetch'
alias neofetch='clear; neofetch'
alias xi='doas xbps-install'
alias xu='doas xbps-install -Su'
alias xr='doas xbps-remove'
alias xo='doas xbps-remove -o'
alias xs='doas xbps-query -Rs'
alias gj='git pull; git add .; git commit -m "docs: update"; git push'
alias reset='reset; cat ~/.config/okpal/sequences 2>/dev/null'

#export PS1="➜ "
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
