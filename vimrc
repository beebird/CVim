"common {{{
set nu
set nocp
set mouse=a
set laststatus=2 "总是显示状态行,要想使用Powerline就必须打开这个
set cursorline   "高亮当前行
set autoread     "文件在vim之外修改，自动重新读入
set hls		     "检索高亮显示
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>

nmap <down> <C-e> 
nmap <up>   <C-y> 

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

colorscheme desert 

"设置折叠方式(manual, indent, expr, syntax, diff, marker)
"zc 折叠
"zo 展开折叠
"[z 到当前打开的折叠的开始处
"]z 到当前打开的折叠的末尾处
"zj 向下移动到下一个折叠的开始处
"zk 向下移动到前一个折叠的结束处
"zm 折叠所有
"zr 打开所有折叠
set foldmethod=syntax
setlocal foldlevel=10        " 设置折叠层数为10
"set foldclose=all           " 设置为自动关闭折叠                            
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"使用空格键打开关闭折叠

"}}}

" pathogen {{{
call pathogen#infect()
syntax on
filetype plugin indent on
"}}}

"NERDTree {{{
"nmap <C-t> :NERDTree<cr>

"}}}

"nerd_commenter {{{
"前面都可以添加行数
"加上行注释
nmap ,cc <leader>cc  
"加上块注释
nmap ,cm <leader>cm
"取消注释
nmap ,cu <leader>cu

"}}}


"taglist "{{{
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Use_Right_Window=1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"let Tlist_Ctags_Cmd='/opt/local/bin/ctags'  "设置ctags命令的位置
"nmap <leader>tl :Tlist<CR>    
nmap <silent><F9> :TlistToggle<CR>    
"设置关闭和打开taglist窗口的快捷键

"}}}

"quickfix "{{{
"跳到下一个错误
nmap <leader>cn :cn<cr> 
"跳到下一个错误
nmap <leader>cp :cp<cr>
"打开错误列表
nmap <leader>cw :cw<cr>
"}}}

"supertab "{{{
let g:SuperTabRetainCompltionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"}}}

"winmanager "{{{

"设置界面分割
"let g:winManagerWindowLayout = "NERDTree,BufExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer,BufExplorer|TagList"
 "let g:winManagerWindowLayout = "TagList|NERDTree"

 "设置winmanager的宽度，默认为25
let g:winManagerWidth = 30

let g:BufExplorer = 30
"定义打开关闭winmanager按键
nmap <silent>wm :WMToggle<cr>
"}}}

"powerline "{{{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbol = 'fancy'
"}}}

"bufexplorer"{{{
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 50  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"}}}

"pydiction"{{{
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
let g:pydiction_menu_height = 20
"}}}

"pyclewn"{{{
"set the console window height
set previewheight=6
"}}}
