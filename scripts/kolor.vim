function AddWords(type,text)
	if !(w:AllWords=="")
		let w:AllWords = w:AllWords."\\|".a:text
	else
		let w:AllWords = a:text
	endif

	if (a:type == "K1")
		if !(w:K1Words=="")
			let w:K1Words = w:K1Words."\\|".a:text
		else
			let w:K1Words = a:text
		endif		
	endif

	if (a:type == "K2")
		if !(w:K2Words=="")
			let w:K2Words = w:K2Words."\\|".a:text
		else
			let w:K2Words = a:text
		endif		
	endif

	if (a:type == "K3")
		if !(w:K3Words=="")
			let w:K3Words = w:K3Words."\\|".a:text
		else
			let w:K3Words = a:text
		endif		
	endif

	if (a:type == "K4")
		if !(w:K4Words=="")
			let w:K4Words = w:K4Words."\\|".a:text
		else
			let w:K4Words = a:text
		endif		
	endif

	if (a:type == "K5")
		if !(w:K5Words=="")
			let w:K5Words = w:K5Words."\\|".a:text
		else
			let w:K5Words = a:text
		endif		
	endif

	if (a:type == "K6")
		if !(w:K6Words=="")
			let w:K6Words = w:K6Words."\\|".a:text
		else
			let w:K6Words = a:text
		endif		
	endif

	if (a:type == "K7")
		if !(w:K7Words=="")
			let w:K7Words = w:K7Words."\\|".a:text
		else
			let w:K7Words = a:text
		endif		
	endif

	if (a:type == "K8")
		if !(w:K8Words=="")
			let w:K8Words = w:K8Words."\\|".a:text
		else
			let w:K8Words = a:text
		endif		
	endif


endfunction

function MyMultiColor(type)
	let text = @*
	call AddWords(a:type,text)
	let @/=w:AllWords
	call matchadd(a:type,text)
	let g:globalMatches = getmatches()
endfunction


function CleanBuffers()
	let w:K1Words=""
	let w:K2Words=""
	let w:K3Words=""
	let w:K4Words=""
	let w:K5Words=""
	let w:K6Words=""
	let w:K7Words=""
	let w:K8Words=""
	let w:AllWords=""
	call clearmatches()
endfunction

function FindPattern(pattern)
	let l:lista = getmatches()
	let l:itemID = "-1"
	for item in lista
		if(item.pattern == a:pattern)
			echo item.id
			let l:itemID = item.id 
		endif
	endfor
	if !(l:itemID == "-1")
		call matchdelete(itemID)
	endif
endfunction

function DeleteFromBuffers(pattern)
	let l:firstMatch = '^'.a:pattern.'\\|'
	let l:middleMatch = '\\|'.a:pattern.'\\|'
	let l:lastMatch = '\\|'.a:pattern.'$'
	let l:singleMatch = '^'.a:pattern.'$'
	"let l:text = 'ble\|bla\|blebla\|bleble\|blebla'
	"let l:text = 'F/LGC/FA\|F/LGC/FA\|F/LGC/FA\|F/LGC/FA\|F/LGC/FA'
	"echo l:text
	"let l:text = substitute(l:text,l:middleMatch,'\\|',"g")
	"let l:text = substitute(l:text,l:middleMatch,'\\|',"g")
	"let l:text = substitute(l:text,l:firstMatch,"","")
	"let l:text = substitute(l:text,l:lastMatch,"","")
	"let l:text = substitute(l:text,l:singleMatch,"","")
	"kasowanie z buforow ze slowami
	"1)2xsrodek globalnie, bo jeden raz to za malo
	"2)koniec
	"3)poczatek
	"4)jesli tylko jeden string w buforze to patern na pojedynczy string
	
	
	let w:K1Words = substitute(w:K1Words,l:middleMatch,'\\|',"g")
	let w:K1Words = substitute(w:K1Words,l:middleMatch,'\\|',"g")
	let w:K1Words = substitute(w:K1Words,l:firstMatch,"","")
	let w:K1Words = substitute(w:K1Words,l:lastMatch,"","")
	let w:K1Words = substitute(w:K1Words,l:singleMatch,"","")

	let w:K2Words = substitute(w:K2Words,l:middleMatch,'\\|',"g")
	let w:K2Words = substitute(w:K2Words,l:middleMatch,'\\|',"g")
	let w:K2Words = substitute(w:K2Words,l:firstMatch,"","")
	let w:K2Words = substitute(w:K2Words,l:lastMatch,"","")
	let w:K2Words = substitute(w:K2Words,l:singleMatch,"","")

	let w:K3Words = substitute(w:K3Words,l:middleMatch,'\\|',"g")
	let w:K3Words = substitute(w:K3Words,l:middleMatch,'\\|',"g")
	let w:K3Words = substitute(w:K3Words,l:firstMatch,"","")
	let w:K3Words = substitute(w:K3Words,l:lastMatch,"","")
	let w:K3Words = substitute(w:K3Words,l:singleMatch,"","")

	let w:K4Words = substitute(w:K4Words,l:middleMatch,'\\|',"g")
	let w:K4Words = substitute(w:K4Words,l:middleMatch,'\\|',"g")
	let w:K4Words = substitute(w:K4Words,l:firstMatch,"","")
	let w:K4Words = substitute(w:K4Words,l:lastMatch,"","")
	let w:K4Words = substitute(w:K4Words,l:singleMatch,"","")

	let w:K5Words = substitute(w:K5Words,l:middleMatch,'\\|',"g")
	let w:K5Words = substitute(w:K5Words,l:middleMatch,'\\|',"g")
	let w:K5Words = substitute(w:K5Words,l:firstMatch,"","")
	let w:K5Words = substitute(w:K5Words,l:lastMatch,"","")
	let w:K5Words = substitute(w:K5Words,l:singleMatch,"","")

	let w:K6Words = substitute(w:K6Words,l:middleMatch,'\\|',"g")
	let w:K6Words = substitute(w:K6Words,l:middleMatch,'\\|',"g")
	let w:K6Words = substitute(w:K6Words,l:firstMatch,"","")
	let w:K6Words = substitute(w:K6Words,l:lastMatch,"","")
	let w:K6Words = substitute(w:K6Words,l:singleMatch,"","")

	let w:K7Words = substitute(w:K7Words,l:middleMatch,'\\|',"g")
	let w:K7Words = substitute(w:K7Words,l:middleMatch,'\\|',"g")
	let w:K7Words = substitute(w:K7Words,l:firstMatch,"","")
	let w:K7Words = substitute(w:K7Words,l:lastMatch,"","")
	let w:K7Words = substitute(w:K7Words,l:singleMatch,"","")

	let w:K8Words = substitute(w:K8Words,l:middleMatch,'\\|',"g")
	let w:K8Words = substitute(w:K8Words,l:middleMatch,'\\|',"g")
	let w:K8Words = substitute(w:K8Words,l:firstMatch,"","")
	let w:K8Words = substitute(w:K8Words,l:lastMatch,"","")
	let w:K8Words = substitute(w:K8Words,l:singleMatch,"","")

	let w:AllWords = substitute(w:AllWords,l:middleMatch,'\\|',"g")
	let w:AllWords = substitute(w:AllWords,l:middleMatch,'\\|',"g")
	let w:AllWords = substitute(w:AllWords,l:firstMatch,"","")
	let w:AllWords = substitute(w:AllWords,l:lastMatch,"","")
	let w:AllWords = substitute(w:AllWords,l:singleMatch,"","")
endfunction


function DelPattern()
	let w:toBeDeleted = @*
	echo w:toBeDeleted
	let w:dupa = w:toBeDeleted
	call FindPattern(w:toBeDeleted)
	call DeleteFromBuffers(w:toBeDeleted)
endfunction

function ReColor()
	if exists("g:globalMatches")
		call setmatches(g:globalMatches)
	endif
endfunction

"dodawanie do kolorowania
vmap <silent> <C-W>1 "+y <ESC> :call MyMultiColor("K1")<CR><CR>
vmap <silent> <C-W>2 "+y <ESC> :call MyMultiColor("K2")<CR><CR>
vmap <silent> <C-W>3 "+y <ESC> :call MyMultiColor("K3")<CR><CR>
vmap <silent> <C-W>4 "+y <ESC> :call MyMultiColor("K4")<CR><CR>
vmap <silent> <C-W>5 "+y <ESC> :call MyMultiColor("K5")<CR><CR>
vmap <silent> <C-W>6 "+y <ESC> :call MyMultiColor("K6")<CR><CR>
vmap <silent> <C-W>7 "+y <ESC> :call MyMultiColor("K7")<CR><CR>
vmap <silent> <C-W>8 "+y <ESC> :call MyMultiColor("K8")<CR><CR>

"szukanie wszystkich lub niektorych zaznaczen
nmap <silent> <C-W>s1 :let @/=w:K1Words<CR><CR>
nmap <silent> <C-W>s2 :let @/=w:K2Words<CR><CR>
nmap <silent> <C-W>s3 :let @/=w:K3Words<CR><CR>
nmap <silent> <C-W>s4 :let @/=w:K4Words<CR><CR>
nmap <silent> <C-W>s5 :let @/=w:K5Words<CR><CR>
nmap <silent> <C-W>s6 :let @/=w:K6Words<CR><CR>
nmap <silent> <C-W>s7 :let @/=w:K7Words<CR><CR>
nmap <silent> <C-W>s8 :let @/=w:K8Words<CR><CR>
nmap <silent> <C-W>sa :let @/=w:AllWords<CR><CR>

"kolorowanie w innych tablicach
nmap <silent> <C-W>ca :call ReColor()<CR><CR>

"kasowanie kolorowania, czyszczenie buforow
nmap <silent> <C-W>cc :call CleanBuffers()<CR><CR>

"skopiowanie zaznaczonego fragmentu i usuniecie z zaznaczen jesli sitnieje
vmap <silent> <C-W>d "+y <ESC> :call DelPattern()<CR><CR>

"potrzebne zeby wygodne byly skroty z kilkoma klawiszami
set notimeout



