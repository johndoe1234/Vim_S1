function BtsStatus()
	execute 'g/' . escape('STUP, BTS Status is now \|sw version.*wn\d\|wdog feeding','[/]') . '/y A'
	tabnew
	put a
	source $VIM_S1_COLORS/BTSLog.vim
endfunction

nmap <silent> <F5> qaq :call BtsStatus()<CR><CR>


