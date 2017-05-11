# path to your oh-my-zsh installation
export ZSH=~/.oh-my-zsh

# set name of the theme to load
ZSH_THEME="robbyrussell"

# auto-update interval (in days)
export UPDATE_ZSH_DAYS=7

# which plugins would you like load
plugins=(
    git
    mercurial
    nvm
    npm
)

# path environment
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/.local/bin:$PATH"

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# disable title rename in tmux
export DISABLE_AUTO_TITLE="true"

# language environment
export LANG=en_US.UTF-8

# preferred editor for local and remote sessions
export EDITOR='vim'

# load nvm
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

# load local .zshrc
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
