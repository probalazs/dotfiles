""""""""""""
" settings "
""""""""""""
autocmd! BufRead,BufWritePost * Neomake

let g:neomake_scss_enabled_makers = ['scsslint']
let g:neomake_html_enabled_makers = ['htmlhint']
let g:neomake_javascript_enabled_makers = ['eslint']
