""""""""""""
" settings "
""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php']
