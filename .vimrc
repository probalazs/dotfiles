" init vundle
call plug#begin('~/.vim/plugged')
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'ciaranm/detectindent'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'szw/vim-ctrlspace'
    Plug 'sickill/vim-monokai'
    Plug 'Shougo/neocomplete.vim'
    Plug 'bling/vim-airline'
    Plug 'kien/ctrlp.vim'
	Plug 'editorconfig/editorconfig-vim'
    Plug 'scrooloose/syntastic'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'leafgarland/typescript-vim'
    Plug 'Quramy/tsuquyomi'
call plug#end()

" import base vim settings
source ~/.vimrc-base

" disabled error bells
set noerrorbells

" disabled visual bells
set novisualbell

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

" use monokai colorscheme
colorscheme monokai

" hide completion preview window
set completeopt-=preview

" highlight 80 column in specific files
autocmd FileType cpp,c,h,hpp,python,sh,javascript,php,html,haskell,css,sass/scss setlocal colorcolumn=80

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.so,*.pyc,*/bower_components/*,*/node_modules/*,*/data/*,*/dist/*,*.sass-cache/*

" check indentation
autocmd BufRead * :DetectIndent

" enable regexp engine
set regexpengine=1

" gui settings
if has("gui_running")
    set guifont=Dejavu\ Sans\ Mono\ 9
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
endif


""""""""""""""""
" key bindings "
""""""""""""""""
nnoremap <F4> :NERDTreeToggle<CR>  

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
let NERDTreeIgnore = ['\.pyc$']

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_haskerll_checkers = ['hlint']

" typescript-vim
let g:typescript_indent_disable = 1

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
