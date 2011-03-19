function MySearch()
	"inicjowanie globali, zeby z poprzedniej karty listy slow przeniesc
	let g:tAllWords = w:AllWords
	let g:tK1Words = w:K1Words
	let g:tK2Words = w:K2Words
	let g:tK3Words = w:K3Words
	let g:tK4Words = w:K4Words
	let g:tK5Words = w:K5Words
	let g:tK6Words = w:K6Words
	let g:tK7Words = w:K7Words
	let g:tK8Words = w:K8Words

	"szukanie
	"echo escape(@*, '[\/]')
	execute 'g/' . escape(@*, '[\/]') . '/y A'
	tabnew
	put a
	"styl kolorowania
	source $VIM_S1_COLORS/BTSLog.vim
	
	let w:filename='search_results' . g:FileCounter
	let g:FileCounter= g:FileCounter+1
	execute 'file ' . w:filename
	setlocal noswapfile
	
	
	"przypisanie globali do lokalnych zmiennych
	let w:AllWords = g:tAllWords
	let w:K1Words = g:tK1Words
	let w:K2Words = g:tK2Words
	let w:K3Words = g:tK3Words
	let w:K4Words = g:tK4Words
	let w:K5Words = g:tK5Words
	let w:K6Words = g:tK6Words
	let w:K7Words = g:tK7Words
	let w:K8Words = g:tK8Words

	"wyczyszczenie globali
	let g:tAllWords = ""
	let g:tK1Words = ""
	let g:tK2Words = ""
	let g:tK3Words = ""
	let g:tK4Words = ""
	let g:tK5Words = ""
	let g:tK6Words = ""
	let g:tK7Words = ""
	let g:tK8Words = ""
	call ReColor()
endfunction

vmap <silent> <F3>  "+y <ESC> qaq :call MySearch()<CR><CR>
nmap <silent> <F3>  <ESC> qaq :call MySearch()<CR><CR>


