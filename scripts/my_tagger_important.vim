function MyTaggerImportant()
	"execute 'g/' .a escape(@*,'[\/]') . '.*/norm A| wazne'
	execute 'norm A| ' . g:TeamTag
endfunction

function MyUnTaggerImportant()
	"execute '%s/' . escape(@*,"/") . '.*\zs\<\|\swazne\>\ze.*//'
	execute '%s/' . escape(@*,'[\/]') . '.*\zs|\s' . g:TeamTag . '//'	
endfunction

nmap <silent> ;i :call MyTaggerImportant()<CR>
nmap <silent> ;I :call MyUnTaggerImportant()<CR>
vmap <silent> ;i :call MyTaggerImportant()<CR>
vmap <silent> ;I "+y <ESC> qaq :call MyUnTaggerImportant()<CR>
