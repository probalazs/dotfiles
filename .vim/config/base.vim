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

""""""""""""""""
" key bindings "
""""""""""""""""

" clear highlights
if maparg('<C-k>', 'n') ==# ''
	nnoremap <silent> <C-k> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-k>
endif

