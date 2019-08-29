export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="pygmalion"
plugins=(git zsh-autosuggestions node npm kubectl zsh-syntax-highlighting autojump)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^l' autosuggest-accept
bindkey '\ea' beginning-of-line

# auto jump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:$HOME/go/bin/

alias ctags=/usr/local/bin/ctags

# go
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
