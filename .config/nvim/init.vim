" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'ciaranm/detectindent'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'vagrant.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'neomake/neomake'
    Plug 'benjie/neomake-local-eslint.vim'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
    Plug 'tpope/vim-surround'
    Plug 'moll/vim-node', { 'for': 'javascript' }
call plug#end()

" import base vim settings
source ~/.vim/config/base.vim

" import plugin configs
source ~/.vim/config/plugins/airline.vim
source ~/.vim/config/plugins/ctrlspace.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/vagrant.vim
source ~/.vim/config/plugins/neomake.vim
source ~/.vim/config/plugins/vim-hybrid-material.vim
source ~/.vim/config/plugins/detectindent.vim
source ~/.vim/config/plugins/ycm.vim

" use system clipboard
set clipboard+=unnamedplus
