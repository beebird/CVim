" scheme setup
colorscheme moria

" typeface setup
if has("win32") || has("win64")
	   set guifont=DejaVu_Sans_Mono:h10:cDEFAULT
   else
	      set guifont=Monaco\ 10
	  endif

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

" Initialization size on window
set lines=50 columns=200 

