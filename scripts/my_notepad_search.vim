function MyNotepadSearch()
	if !(exists('w:filename'))
		if !empty(@%)
			let w:filename=@%
		else
			let w:filename='search_results' . g:FileCounter
			let g:FileCounter= g:FileCounter+1
		endif
		execute 'file ' . w:filename		
	endif		
	execute 'lvim/' . escape(@*, '[/]') . '/ ' . w:filename
	lopen	
endfunction

function MyNotepadMultiSearch()
	if !(exists('w:filename'))
		if !empty(@%)
			let w:filename=@%
		else
			let w:filename='search_results' . g:FileCounter
			let g:FileCounter= g:FileCounter+1
		endif
		execute 'file ' . w:filename		
	endif	
	execute 'lvim/' . escape(g:buforek, '[/]') . '/ ' . w:filename
	lopen	
endfunction


vmap <silent> <F2>  "+y <ESC> qaq :call MyNotepadSearch()<CR><CR>
nmap <silent> <F2>  <ESC> qaq :call MyNotepadSearch()<CR><CR>

nmap <silent> <C-F2> qaq :call MyNotepadMultiSearch()<CR><CR>

