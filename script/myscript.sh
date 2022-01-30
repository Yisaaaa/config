#! /bin/bash

NAME=$(whoami)

echo "Hello $NAME"

read -p "Shall we start?(y/n): " ANSWER
case "$ANSWER" in
	[yY] | [yY][eE][sS])
	echo "Game on!!"
	doThings
	;;
	[nN] | [nN][oO])
	echo "Come back when you're ready!"
	;;
esac

function doThings() {
	echo "installing packages..."
	sudo pacman -S --noconfirm git make inkscape xorg-xcursorgen typescript
	cd ~/Downloads
	echo "cloning git..."
	git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
	git clone https://github.com/varlesh/volantes-cursors.git
	git clone https://github.com/pop-os/shell.git
	whitesur
	volantes
	popshell
}

function whitesur() {
	echo "installing whitesur..."
	cd ~/Downloads/WhiteSur-gtk-theme
	bash install.sh -c dark
}

function volantes() {
	echo "installing volantes..."
	cd ~/Downloads/volantes-cursors
	make build
	sudo make install
}

function popShell() {
	echo "installing pop shell"
	cd ~/Downloads/shell
	make local-install	
}
