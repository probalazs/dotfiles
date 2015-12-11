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
    bower
    ubuntu
    npm
    grunt
    docker
    docker-compose
    nvm
)

# path environment
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# language environment
export LANG=en_US.UTF-8

# preferred editor for local and remote sessions
export EDITOR='vim'

# load nvm
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  
