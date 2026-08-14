# .profile

# PS1
export PS1="-> "

# Paths
export KISS_PATH="$HOME/repos/repo/core"
export KISS_PATH="$KISS_PATH:$HOME/repos/repo/extra"
export KISS_PATH="$KISS_PATH:$HOME/repos/repo/wayland"
export KISS_PATH="$KISS_PATH:$HOME/repos/community/community"
export KISS_PATH="$KISS_PATH:$HOME/repos/pkg/pkg"
export KISS_HOOK="$HOME/bin/kh"
export PATH="$PATH:$HOME/bin"
export PATH="/usr/lib/ccache/bin:$PATH"

# Build flags
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j8"

# Others
export XDG_RUNTIME_DIR="/run/user/1000"
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="firefox"

# Get colors
export ENV="$HOME/.rc"

printf 'start wayland? '
! read -r || exec sway >/dev/null 2>&1 
