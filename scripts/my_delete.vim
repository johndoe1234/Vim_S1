function MyDelete()
	execute 'g/' . escape(@*, '[\/]') . '/y A'
endfunction

vmap <silent> <C-d> "+y <ESC> :call MyDelete()<CR><CR>


