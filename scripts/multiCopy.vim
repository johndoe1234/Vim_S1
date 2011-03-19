function MyMultiCopy()
	if !(g:buforek=="")
		let g:buforek = g:buforek.'\|'.@*
	else
		let g:buforek = @*
	endif	

	"okno w ktorym tne bufor jest wyswietlany
	let winnum = bufwinnr(g:winBufName)
	"jak okno jest otwarte to odswiezamy
	if winnum != -1
		"przejdz do okna z buforem
		exe winnum . 'wincmd w'
		"czy na bank tam jestesmy?
		if winnr() == winnum
			norm G
			norm A
			"norm gg
			"norm 1000dd
			"let counter = 1
			"let costam = split(g:buforek,'\\|')
			"for value in costam 
			"	call setline(counter, value)
			"let counter=counter+1			
			"endfor
			put = @*
			"przejdz do okna po prawej = syslog
			exe 'wincmd l'
		endif
	endif
endfunction

"vmap <silent> <C-f> "+y <ESC> :call MyMultiCopy()<CR><CR>
vmap <C-f> "+y <ESC> :call MyMultiCopy()<CR><CR>
"czyszczenie sercz bufer klin
nmap <silent> <C-w>sbc qaq :let g:buforek = "" <CR><CR>





