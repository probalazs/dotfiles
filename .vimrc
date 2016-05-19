" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'vagrant.vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'ciaranm/detectindent'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'sickill/vim-monokai'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'rking/ag.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'scrooloose/syntastic'
call plug#end()

" import base vim settings
source ~/.vim/config/base.vim

" import gui settings
source ~/.vim/config/gui.vim

" import plugin configs
source ~/.vim/config/plugins/ag.vim
source ~/.vim/config/plugins/syntastic.vim
source ~/.vim/config/plugins/airline.vim
source ~/.vim/config/plugins/ctrlspace.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/vagrant.vim
source ~/.vim/config/plugins/youcompleteme.vim


" disabled error bells
set noerrorbells

" disabled visual bells
set novisualbell

" use system clipboard
set clipboard=unnamedplus

" don't make a backup before overwriting a file 
set nobackup

" don't make a backup before overwriting a file 
set nowritebackup

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
