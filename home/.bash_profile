# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

printf 'start wayland? '
! read -r || exec dwl-start 
