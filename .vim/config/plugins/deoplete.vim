""""""""""""
" settings "
""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#max_list = 10

let g:deoplete#sources = {}
let g:deoplete#sources._ = []

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.javascript = '[^. \t]'
let g:deoplete#omni#input_patterns.html = '<[^>]*\s[[:alnum:]-]*'
let g:deoplete#omni#input_patterns.css = '[^. \t]'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
