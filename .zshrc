# export ZSH="$HOME/.oh-my-zsh"
#
# ZSH_THEME="pygmalion"
# plugins=(git zsh-autosuggestions node npm kubectl zsh-syntax-highlighting autojump)
# source $ZSH/oh-my-zsh.sh
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions", from:"github", use:"zsh-autosuggestions.zsh"
zplug "plugins/kubectl", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", from:github
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi
zplug load
zstyle ":prompt:pure:user" show yes
zstyle ":prompt:pure:host" show yes
zstyle ":prompt:pure:execution_time" show yes
zstyle ":prompt:pure:git:stash" show yes

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^l' autosuggest-accept
bindkey '\ea' beginning-of-line
bindkey '^n' forward-word

# auto jump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export PATH=/usr/local/Cellar/go@1.11/1.11.13/bin:$PATH:$HOME/go/bin/
export PATH=$PATH:$HOME/go/bin/

alias ctags=/usr/local/bin/ctags

# go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

alias tmux='tmux -u'
export PATH=/usr/local/smlnj/bin:$HOME/go/src/github.com/tangerine-network/go-tangerine/build/bin:$HOME/go/src/gitlab.com/byzantine-lab/backend/bin:$HOME/byzantine-lab/flutter/bin:$HOME/byzantine-lab/esp/xtensa-esp32-elf/bin:$PATH
export IDF_PATH=$HOME/byzantine-lab/esp/esp-idf

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jhih-minghuang/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jhih-minghuang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jhih-minghuang/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jhih-minghuang/google-cloud-sdk/completion.zsh.inc'; fi

# alias
alias gg='git grep'
alias python='/usr/local/bin/python3.8'

export TERM="xterm-256color"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib
