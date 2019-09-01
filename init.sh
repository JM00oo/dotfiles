#!/bin/bash

if [[ "$OSTYPE" = "linux-*" ]]; then
	sudo apt-get install -y vim git zsh alacritty
fi

if [[ "$OSTYPE" = "darwin*" ]]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install install -y vim git zsh
	brew cask install alacritty
fi

mkdir -p ~/.config

# install plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install vimrc
curl -fLo ~/.vimrc https://raw.githubusercontent.com/JM00oo/dotfiles/master/.vimrc

# install zshrc
curl -fLo ~/.zshrc https://raw.githubusercontent.com/JM00oo/dotfiles/master/.zshrc

# install tmux.config
curl -fLo ~/.tmux.config https://raw.githubusercontent.com/JM00oo/dotfiles/master/.tmux.config

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# install autojump
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py

# install alacritty config
curl -fLo ~/.config/alacritty.yml https://raw.githubusercontent.com/JM00oo/dotfiles/master/alacritty.yml
