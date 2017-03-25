""""""""""""
" settings "
""""""""""""
let g:CtrlSpaceUseMouseAndArrowsInTerm = 1

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g "" --vimgrep --ignore bower_components --ignore node_modules --ignore .sass-cache --ignore /dist/ --ignore /www/ --ignore /platforms/'
endif

nnoremap <c-space> :CtrlSpace<CR>  
nnoremap <silent><C-p> :CtrlSpace O<CR>
