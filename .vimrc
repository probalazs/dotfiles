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
call vundle#end()

""""""""""""""""
" vim settings "
""""""""""""""""

" automatic language-dependent indenting
filetype plugin indent on 

" copy the indentation from the previous line 
set autoindent

" automatically inserts one extra level of indentation in some cases
set smartindent

" smart case sensitive search
set smartcase

" not redraw while running macros
set lazyredraw

" auto read file changes
set autoread

" highlight all search matches
set hlsearch

" move the cursor to the matched string, while typing the search pattern
set incsearch

" the cursor will briefly jump to the matching brace when you insert one
set showmatch

" displays line numbers
set number

" using 4 spaces instead of tab
set tabstop=4

" affects what happens when you press >>, << or ==
set shiftwidth=4

" hide tabline
set showtabline=0

" highlight the line containing the cursor  
set cursorline

" always show statusline
set laststatus=2

" word wrap
set wrap

" show the line and column number of the cursor position
set ruler

" use the appropriate number of spaces to insert a tab
set expandtab

" when on, a tab in front of a line inserts blanks according to 'shiftwidth'
set smarttab

" automatically read changes outside of vim
set autoread

" disabled error bells
set noerrorbells

" disabled visual bells
set novisualbell

" use hidden buffers
set hidden

" use system clipboard
set clipboard=unnamedplus

" don't make a backup before overwriting a file 
set nobackup

" don't make a backup before overwriting a file 
set nowb

"  don't make a swap file
set noswapfile

" command-line completion operates in an enhanced mode
set wildmenu

" when more than one match, list all matches and complete till longest common string, alternative list all matches and complete first match
set wildmode=list:longest,full

" show syntax highlight
syntax on

" use monokai colorscheme
colorscheme monokai

" hide completion preview window
set completeopt-=preview

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.so,*.pyc,*/bower_components/*,*/node_modules/*

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

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#same_filetypes')
    let g:neocomplete#same_filetypes = {}
endif
let g:neocomplete#same_filetypes.css = 'scss,sass'

" ctrlspace
let g:airline_exclude_preview = 1
let g:ctrlspace_use_ruby_bindings = 1
let g:ctrlspace_use_mouse_and_arrows_in_term = 1
let g:ctrlspace_save_workspace_on_exit = 1
let g:ctrlspace_save_workspace_on_switch = 1

" airline
let g:airline_exclude_preview = 1
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

" nerdtree
let NERDTreeIgnore = ['\.pyc$']
let g:nerdtree_tabs_open_on_gui_startup = 0

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php']

""""""""""""""""
" key bindings "
""""""""""""""""
nnoremap <F4> :NERDTreeToggle<CR>  
