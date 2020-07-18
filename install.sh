#!/bin/sh

if [[ "$OSTYPE" == "darwin"* ]];
then
	echo "Installing Mac OS dotfiles..."
	echo "Installing oh-my-zsh"
	/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	# Installing Homebrew dependencies
	brew cask install ubersicht
	brew install python
	brew install pip3
	brew install ranger
	brew install neofetch
	brew install neovim
	brew install koekeishiya/formulae/skhd
	brew install koekeishiya/formulae/yabai
	brew services start yabai
	brew update
	brew services restart --all

	# Clone bar into default Übersicht location
	git clone https://github.com/zzzeyez/pecan.git "$HOME/Library/Application Support/Übersicht/widgets/pecan"

	files=(.config .skhdrc .vimrc .yabairc .zshrc)
	for f in "${files[$@]}"; do
		ln -s ${f} "${HOME}/${f}"
	done
elif [[ "$OSTYPE" == "arch"* ]];
then
	echo "Btw I use arch"
else
	echo "Operating system not currently supported :/"
fi
