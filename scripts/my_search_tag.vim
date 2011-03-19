function MySearchTag()
	execute 'g/|\s'. g:MyTag . '\||\s' . g:TeamTag. '/y A'
	tabnew
	put a
	source $VIM_S1_COLORS/BTSLog.vim
endfunction

nmap <silent> <F6> qaq :call MySearchTag()<CR><CR>


