" init vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'ekalinin/Dockerfile.vim'
    Plugin 'cakebaker/scss-syntax.vim'
    Plugin 'ciaranm/detectindent'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'scrooloose/nerdtree'
    Plugin 'szw/vim-ctrlspace'
    Plugin 'sickill/vim-monokai'
    Plugin 'Shougo/neocomplete.vim'
    Plugin 'bling/vim-airline'
    Plugin 'kien/ctrlp.vim'
	Plugin 'editorconfig/editorconfig-vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'rking/ag.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'eagletmt/neco-ghc'
    Plugin 'eagletmt/ghcmod-vim'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'Quramy/tsuquyomi'
call vundle#end()

" import vim and neovim common rc
source ~/.vimrc-common

""""""""""""""""
" vim settings "
""""""""""""""""

" gui settings
if has("gui_running")
    set guifont=Dejavu\ Sans\ Mono\ 9
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
endif

"""""""""""""""""""
" plugin settings "
"""""""""""""""""""

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#max_list = 20

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><Left>  neocomplete#cancel_popup() . "\<Left>"
inoremap <expr><Right> neocomplete#cancel_popup() . "\<Right>"

let g:neocomplete#enable_auto_select = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#same_filetypes')
    let g:neocomplete#same_filetypes = {}
endif
let g:neocomplete#same_filetypes.css = 'scss,sass'

" nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 0

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_haskerll_checkers = ['hlint']
