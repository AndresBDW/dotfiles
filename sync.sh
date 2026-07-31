#!/bin/sh
#
# sync - script to install/sync the dotfiles repo

log() {
    printf '\033[32m->\033[m %s.\n' "$*"
}

war() {
    printf '\033[33m->\033[m %s.\n' "$*"
}

err() {
    printf '\033[31m->\033[m %s.\n' "$*" >&2
    exit 1
}

prompt() {
	 echo "Press Enter to continue or Ctrl+C to abort"
	 read -r
}

link() {
	cp ~/imagenes/capturas/current.png ./screenshot.png
	cp ~/.config/foot/foot.ini ./foot/
	cp ~/.config/sway/config ./sway/
	rm ./fonts/*
	cp ~/.fonts/* ./fonts
	cp ~/.config/user-dirs.dirs ./user-dirs.dirs/user-dirs.dirs
	cp ~/.vimrc ./vim/.vimrc 
	cp ~/imagenes/wallpapers/* ./wallpapers
	cp -r ~/.config/okpal/* ./okpal
}

install() {
	cp -p ./foot/foot.ini ~/.config/foot/foot.ini
	cp -p ./sway/config ~/.config/sway/config
	cp -p ./fonts/* ~/.fonts
	cp -p ./user-dirs.dirs/user-dirs.dirs ~/.config/user-dirs.dirs
	cp -p ./vim/.vimrc ~/.vimrc
	cp -p ./wallpapers/* ~/imagenes/wallpapers
	cp -p -r ./okpal/* ~/.config/okpal
}

main() {
	if [ "$1" = link ]; then
		log linking dotfiles, overwritting old dotfiles.
		link
		log dotfiles linked successfully
	elif [ "$1" = install ]; then
		war you are about to install the dotfiles, if you have dotfiles in sway, foot, vim, etc, these will be overwritten.
		prompt
		if install > log.log 2>&1; then
			log "dotfiles installed successfully"
		else
			err "dotfiles not installed. Check 'log.log' for details."
		fi
		log dotfiles installed sucessfully
	else
		printf "use: sync.sh <install/link>\n"
	fi
}

main "$1"
