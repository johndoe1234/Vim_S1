function BufferDisplay()	
	let winnum = bufwinnr(g:winBufName)
	if winnum != -1
		"przejdz do okna gdzie wyswietlany jest bufor
		exe winnum . 'wincmd w'
		"jesli okno jest otwarte to zamykamy
		if winnr() == winnum
			"zapisanie bufora vimowskiego do zmiennej
			let lines = getbufline(bufnr(g:winBufName), 1, "$")
			let g:buforek = join(lines,'\|')
			let g:buforek = substitute(g:buforek, '\(\\|\)\{2,99}','\\|',"g")
			let g:buforek = substitute(g:buforek, '\\|$','',"g")
			let g:buforek = substitute(g:buforek, '^\\|','',"g")
			close
		endif
	else
		"tworzenie nowego okna, po lewej o szerokosc 20 i nazwie bufName
		execute 'vertical aboveleft 20 split ' . g:winBufName
		"nadanie oknu szerokosci 20
		"execute '20 wincmd |'
		"jakies ustawienia dla vimowskiego bufora
	 	setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
		"potrzebne do setline
		let counter = 1
		"podzielenie bufora na odzielne linijki
		let costam = split(g:buforek,'\\|')
		for value in costam 
			"printownie do nowego okna
			call setline(counter, value)
			let counter=counter+1
		endfor
		"przejscie do okna z syslogami dla wygody przegladania
		exe 'wincmd l'
		source $VIM_S1_COLORS/BTSLog.vim
	endif
endfunction

nmap <silent> <F8> qaq :call BufferDisplay()<CR><CR>
vmap <silent> <F8> qaq :call BufferDisplay()<CR><CR>


