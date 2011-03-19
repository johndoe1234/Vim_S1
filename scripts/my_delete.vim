function MyDelete()
	execute 'g/' . escape(@*,"/") . '/d'
endfunction

vmap <silent> <C-d> "+y <ESC> :call MyDelete()<CR><CR>


