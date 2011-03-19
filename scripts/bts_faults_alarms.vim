function BtsFaults()
	execute 'g/starting up\|starts handling\|received alarm\|error\|conflict\|kernel\|assert\|OAM_SHUT_DOWN\|sitereset/y A'
	tabnew
	put a
	source $VIM_S1_COLORS/BTSLog.vim
endfunction

nmap <silent> <F7> qaq :call BtsFaults()<CR><CR>


