""""""""""""
" settings "
""""""""""""
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

augroup omnifuncs
  	autocmd!
	autocmd FileType javascript setlocal omnifunc=tern#Complete
augroup end
