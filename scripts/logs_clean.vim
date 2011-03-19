function ClearLogFile()
	%s/\r//g
	g/^$/d
	%s/^\d* //
	%s/^\d\d.\d\d //
	%s/<\d*.*\d> \a*\d*\a*\d*//
	%s/]  .. /] /
	%s/\[\d*\.\d*\.\d*\.\d*\]//
endfunction

nmap <silent> ;l :call ClearLogFile()<CR>
