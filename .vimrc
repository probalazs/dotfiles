" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'vagrant.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'ciaranm/detectindent'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'szw/vim-ctrlspace'
    Plug 'sickill/vim-monokai'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'scrooloose/syntastic'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
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
    " use monokai colorscheme
    colorscheme monokai

    set guifont=Dejavu\ Sans\ Mono\ 9
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
endif

""""""""""""""""
" key bindings "
""""""""""""""""

" toggle nerdtree
nnoremap <F4> :NERDTreeToggle<CR>  

"""""""""""""""""""
" plugin settings "
"""""""""""""""""""

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

" ctrlspace
let g:ctrlspace_use_ruby_bindings = 1
let g:ctrlspace_use_mouse_and_arrows_in_term = 1
let g:ctrlspace_save_workspace_on_exit = 1
let g:ctrlspace_save_workspace_on_switch = 1

" airline
let g:airline_exclude_preview = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" vagrant.vim
augroup vagrant
    au!
    au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

" YouCompleteMe
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_always_populate_location_list = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" ag.vim
let g:ag_prg="ag --vimgrep --ignore bower_components --ignore node_modules --ignore .sass-cache --ignore /dist/"
