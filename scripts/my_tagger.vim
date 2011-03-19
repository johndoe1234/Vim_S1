function MyTagger()
	execute 'g/' . escape(@*,'[\/]') . '.*/norm A| ' .  g:MyTag
endfunction 

function MyUnTagger()
	execute '%s/' . escape(@*,'[\/]') . '.*\zs|\s' . g:MyTag . '//'	
endfunction

nmap <silent> ;k :call MyTagger()<CR>
nmap <silent> ;K :call MyUnTagger()<CR>
vmap <silent> ;k "+y <ESC> qaq :call MyTagger()<CR>
vmap <silent> ;K "+y <ESC> qaq :call MyUnTagger()<CR>



