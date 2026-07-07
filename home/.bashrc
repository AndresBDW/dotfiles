# .bashrc

[[ $- != *i* ]] && return

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

if [ -z "$XDG_RUNTIME_DIR" ]; then
        XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

        mkdir -pm 0700 "$XDG_RUNTIME_DIR"
        export XDG_RUNTIME_DIR
fi

if [[ ":$PATH:" != *":/home/diego/bin:"* ]]; then
    export PATH="$PATH:$HOME/bin"
fi

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

alias ls='ls --color=auto --group-directories-first'
alias qfetch='clear; qfetch'
alias gfetch='clear; gfetch'
alias vfetch='clear; vfetch'
alias fastfetch='clear; fastfetch'
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xo='sudo xbps-remove -o'
alias xs='sudo xbps-query -Rs'
alias gj='git pull; git add .; git commit -m "docs: update"; git push'
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
