call plug#begin('~/.vim/plugged')
    Plug 'sickill/vim-monokai'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'ciaranm/detectindent'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree'
    Plug 'szw/vim-ctrlspace'
    Plug 'sickill/vim-monokai'
    Plug 'bling/vim-airline'
    Plug 'kien/ctrlp.vim'
	Plug 'editorconfig/editorconfig-vim'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'Quramy/tsuquyomi'
    Plug 'Shougo/deoplete.nvim'
call plug#end()

" import base vim settings
source ~/.vimrc-common

"""""""""""""""""""
" plugin settings "
"""""""""""""""""""

" deoplete
let g:deoplete#enable_at_startup = 1
