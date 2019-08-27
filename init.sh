#!/bin/bash

#sudo apt-get install -y vim git zsh

# install plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install vimrc
curl -fLo ~/.vimrc https://raw.githubusercontent.com/JM00oo/dotfiles/master/.vimrc

# install zshrc
curl -fLo ~/.zshrc https://raw.githubusercontent.com/JM00oo/dotfiles/master/.zshrc

# insetall nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
