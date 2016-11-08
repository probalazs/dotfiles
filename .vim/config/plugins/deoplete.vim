""""""""""""
" settings "
""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#max_list = 10

let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#sources.javascript = ['buffer', 'member', 'file', 'ternjs']

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.html = '<[^>]*\s[[:alnum:]-]*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
