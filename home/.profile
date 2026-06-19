export PATH="$HOME/bin:$PATH"
export PS1="-> "
export PF_INFO="ascii title os host kernel uptime pkgs memory wm shell editor palette"
export GTK_THEME="Adwaita:dark"
export CFLAGS="-O3 -march=native -pipe"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS=-j4
export EDITOR=vim
export XDG_RUNTIME_DIR=/home/diego/.cache/xdg-runtime
export YACC=byacc
export ENV=$HOME/.rc
export $(dbus-launch)

printf 'start wayland? '
! read -r || exec sway > /dev/null 2>&1
