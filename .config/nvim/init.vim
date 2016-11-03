" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'ciaranm/detectindent'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'vagrant.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'neomake/neomake'
    Plug 'benjie/neomake-local-eslint.vim'
    Plug 'ternjs/tern_for_vim', { 'do': 'rm -rf node_modules && npm install' }
call plug#end()

" import base vim settings
source ~/.vim/config/base.vim

" import common settings
source ~/.vim/config/common.vim

" import plugin configs
source ~/.vim/config/plugins/ag.vim
source ~/.vim/config/plugins/airline.vim
source ~/.vim/config/plugins/ctrlspace.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/vagrant.vim
source ~/.vim/config/plugins/deoplete.vim
source ~/.vim/config/plugins/neomake.vim
source ~/.vim/config/plugins/vim-hybrid-material.vim
source ~/.vim/config/plugins/detectindent.vim
source ~/.vim/config/plugins/tern.vim

" use system clipboard
set clipboard+=unnamedplus
