set ic
set hls
set is

set ruler
set showcmd
set incsearch


set nocompatible

let g:MyTag='kozlowski'
let g:TeamTag='S1'
let g:FileCounter=0


let $VIM_S1_SCRIPTS = 'd:\Vim_S1\scripts'
let $VIM_S1_COLORS = 'd:\Vim_S1\colors'
set dir=d:\Vim_S1/tmp
set backupdir=d:\Vim_S1/tmp
"kolorowanie on
"syntax on

set noswapfile





"zmienne do wyswietlania bufora wyszkukiwanych stringow w nowym oknie
let g:winBufName = 'bufor'
"let g:winBufName = 'multiSearchBuf'
let g:buforek = ""








set nobackup
set history=100
filetype plugin indent on

"mswindows mappings
behave mswin
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" backspace in Visual mode deletes selection
vnoremap <BS> d

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>		"+gP
map <S-Insert>		"+gP

cmap <C-V>		<C-R>+
cmap <S-Insert>		<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" For CTRL-V to work autoselect must be off.
" On Unix we have two selections, autoselect can be used.
if !has("unix")
  set guioptions-=a
endif

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c








"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
source $VIM_S1_SCRIPTS/logs_clean.vim
source $VIM_S1_SCRIPTS/my_search.vim
source $VIM_S1_SCRIPTS/my_search_tag.vim
source $VIM_S1_SCRIPTS/my_tagger.vim
source $VIM_S1_SCRIPTS/my_tagger_important.vim
source $VIM_S1_SCRIPTS/bts_status.vim
source $VIM_S1_SCRIPTS/bts_faults_alarms.vim
source $VIM_S1_SCRIPTS/my_delete.vim
source $VIM_S1_SCRIPTS/multiCopy.vim
source $VIM_S1_SCRIPTS/my_multiSearch.vim
"source $VIM_S1_SCRIPTS/MultipleSearch2.vim
source $VIM_S1_SCRIPTS/kolor.vim
source $VIM_S1_SCRIPTS/my_notepad_search.vim
source $VIM_S1_SCRIPTS/buf_display.vim






"zaznaczenie aktualnej linii
set cursorline
"hi CursorLine ctermbg = Red guibg = #F5FBF6
hi CursorLine ctermbg = Red guibg = gray15 guifg = gray80





"kolorowanie
let g:tAllWords = ""
let g:tK1Words = ""
let g:tK2Words = ""
let g:tK3Words = ""
let g:tK4Words = ""
let g:tK5Words = ""
let g:tK6Words = ""
let g:tK7Words = ""
let g:tK8Words = ""

let w:AllWords = ""
let w:K1Words = ""
let w:K2Words = ""
let w:K3Words = ""
let w:K4Words = ""
let w:K5Words = ""
let w:K6Words = ""
let w:K7Words = ""
let w:K8Words = ""


highlight Normal 	guibg=black 		guifg=grey85
highlight Cursor guibg=Green guifg=NONE



au! BufRead,BufNewFile *.log set filetype=BTSLog
au! Syntax BTSLog source $VIM_S1_COLORS/BTSLog.vim

source $VIMRUNTIME/syntax/vim.vim
"au! BufRead,BufNewFile *.log call BtsStatus()


nmap <F4> :q!<CR><CR>
"ponowne kolorowanie np nowej tablicy
nmap <silent> <C-w>bts :source $VIM_S1_COLORS/BTSLog.vim<CR><CR>
"zmiana koloru printow CCSa, telecoma itp
nmap <silent> <C-w>SH :hi SHITPRINTS guifg=red<CR><CR>
nmap <silent> <C-w>sh :hi SHITPRINTS guifg=grey35<CR><CR>

"map <C-f> :g!/starting up\\|starts handling\\|received alarm\\|error\\|conflict\\|kernel\\|assert\\|OAM_SHUT_DOWN\\|sitereset\\|bts status/d

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

