set sw=4
set ts=4
set mouse=a
set scrolloff=5
set history=1000
set cursorline
set autoindent
set autoread
set number
set ruler
set fdm=marker

filetype indent on
syntax on

map <F6> ggVG"+y
map <c-j> }
map <c-k> {
map : q:a

nmap <c-h> :N<Cr>
nmap <c-l> :n<Cr>

imap <c-r> <Esc>
imap <c-o> <Esc>o
imap <F6> ggVG"+y

autocmd BufNewFile *.py 0r /usr/share/vim/vimfiles/template.py

autocmd BufNewFile *.cpp,*.h exec ":call SetTitle()" 
func SetTitle() 
    if expand("%:e") == 'cpp' 
        call setline(1,          "/***********************************************************")
        call append(line("."),   "  > File Name: ".expand("%")) 
        call append(line(".")+1, "  > Author: TALBW") 
        call append(line(".")+2, "  > Created Time: ".strftime("%c"))
        call append(line(".")+3, " *******************************************************/")
        call append(line(".")+4, "")
	endif
    if expand("%:e") == 'h' 
        call setline(1,          "/***********************************************************")
        call append(line("."),   "  > File Name: ".expand("%")) 
        call append(line(".")+1, "  > Author: TALBW") 
        call append(line(".")+2, "  > Created Time: ".strftime("%c"))
        call append(line(".")+3, " *******************************************************/")
        call append(line(".")+4, "")
	endif
endfunc
autocmd BufNewFile * normal G
