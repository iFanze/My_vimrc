"项目配置
:cs add /Users/Fanze/gaps_wetest/BR_REGRESSION/cscope.out /Users/Fanze/gaps_wetest/BR_REGRESSION
:set tags=/Users/Fanze/gaps_wetest/BR_REGRESSION/tags

"语法支持
syn on
set nocompatible

"个性化外观
colorscheme desert
set linespace=6
set number           
set guifont=Source_Code_Pro:h14

"代码折叠
set foldenable              
set foldmethod=syntax
set foldlevelstart=99       " 打开文件是默认不折叠代码
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"效率
let mapleader=";"

"TagList插件
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"WinManager插件
let g:winManagerWidth=35
let g:winManagerWindowLayout='FileExplorer|TagList'
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
map wm :WMToggle<cr>

"CScope插件
:set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"QuickFix
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

"MiniBufExplorer插件
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

"A插件
nnoremap <silent> <F12> :A<CR>

"环境保存从
set sessionoptions="blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winpos,winsize"
set undodir=~/.undo_history/
set undofile
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

"common conf {{             通用配置
set ai                      "自动缩进
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
"set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}
"pathogen是Vim用来管理插件的插件
"pathogen{
"call pathogen#infect()
"}

"}}
