# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

printf 'start dwm? '
! read -r || exec startx >/dev/null 2>&1 
