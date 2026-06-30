# .bashrc
[[ $- != *i* ]] && return
alias ls='ls --color=auto'

export PS1="[\u@\h \W]\$ "
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j8"
export PATH="$PATH:$HOME/bin"
export EDITOR="vim"
export YACC=byacc
export GTK_THEME="Adwaita:dark"
export PF_INFO="ascii title os host kernel uptime pkgs memory wm shell editor palette"
export $(dbus-launch)
export GD_REPLAYS="/home/diego/.wine/drive_c/users/diego/AppData/Local/GeometryDash/geode/mods/eclipse.eclipse-menu/replays"

read -r _b < ~/.config/okpal/sequences
printf '%s' "$_b"
unset _b
