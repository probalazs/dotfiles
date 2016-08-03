" update remote deoplete plugins
function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'vagrant.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'neomake/neomake'
    Plug 'tomasr/molokai'
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

" use system clipboard
set clipboard+=unnamedplus
