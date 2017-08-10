" init plugins
call plug#begin('~/.vim/plugged')
    Plug 'ciaranm/detectindent'
    Plug 'kristijanhusak/vim-hybrid-material'
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
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
    Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
    Plug 'moll/vim-node', { 'for': 'javascript' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

""""""""
" BASE "
""""""""
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

" use hidden buffers
set hidden

" show syntax highlight
syntax on

" disabled error bells
set noerrorbells

" disabled visual bells
set novisualbell

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
autocmd FileType cpp,c,h,hpp,python,sh,javascript,php,html,haskell,css,sass/scss setlocal colorcolumn=120

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.so,*.pyc,*/bower_components/*,*/node_modules/*,*/data/*,*/dist/*,*.sass-cache/*

" enable regexp engine
set regexpengine=1

" clear highlights
if maparg('<C-k>', 'n') ==# ''
	nnoremap <silent> <C-k> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-k>
endif

" use system clipboard
set clipboard+=unnamedplus

" set python path
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"""""""""""
" PLUGINS "
"""""""""""
" airline
let g:airline_exclude_preview = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" ctrlspace
let g:CtrlSpaceUseMouseAndArrowsInTerm = 1

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g "" --vimgrep --ignore bower_components --ignore node_modules --ignore .sass-cache --ignore /dist/ --ignore /www/ --ignore /platforms/'
endif

nnoremap <c-space> :CtrlSpace<CR>  
nnoremap <silent><C-p> :CtrlSpace O<CR>

" detectindent
autocmd BufRead * :DetectIndent

" neomake
autocmd! BufRead,BufWritePost * Neomake

let g:neomake_scss_enabled_makers = ['scsslint']
let g:neomake_html_enabled_makers = ['htmlhint']
let g:neomake_javascript_enabled_makers = ['eslint']

" nerdtree
nnoremap <F4> :NERDTreeToggle<CR>  

let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeIgnore = ['\.pyc$']
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested lwindow

" typescript
let g:typescript_indent_disable = 1

" set colorscheme
set background=dark
colorscheme hybrid_reverse

let g:airline_theme = "hybrid"

" you complete me
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#max_list = 10

let g:deoplete#sources = {}
let g:deoplete#sources._ = []

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.html = '<[^>]*\s[[:alnum:]-]*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
