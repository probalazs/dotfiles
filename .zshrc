# path to your oh-my-zsh installation
export ZSH=/home/probalazs/.oh-my-zsh

# set name of the theme to load
ZSH_THEME="robbyrussell"

# auto-update interval (in days)
export UPDATE_ZSH_DAYS=7

# display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

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
