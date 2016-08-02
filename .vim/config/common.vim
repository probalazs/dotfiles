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
autocmd FileType cpp,c,h,hpp,python,sh,javascript,php,html,haskell,css,sass/scss setlocal colorcolumn=80

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.so,*.pyc,*/bower_components/*,*/node_modules/*,*/data/*,*/dist/*,*.sass-cache/*

" enable regexp engine
set regexpengine=1
