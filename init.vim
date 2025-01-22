set t_co=256
set encoding=utf-8
set directory=.,$TEMP
let &t_ut=""
"修改缩进距离
set tabstop=2
"首个退格键返回上一行
set backspace=indent,eol,start

let &t_SI="\<Esc>]50;CursorShape=1\x7"
let &t_SR="\<Esc>]50;CursorShape=2\x7"
let &t_EI="\<Esc>]50;CursorShape=0\x7"

"vim下次打开返回上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! G'\"" | endif


"leader键映射为空格
let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set ignorecase
set hlsearch
set incsearch
set smartcase
exec "nohlsearch"
noremap = nzz
noremap - Nzz
noremap j h
noremap k j
noremap i k
noremap n i
noremap N I
noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l
noremap <LEADER><CR> :nohlsearch<CR>
map S :w!<CR>
map s <nop>
map Q :q<CR>
"设置向右分屏
map sl :set splitright<CR>:vsplit<CR>
"设置向左分屏
map sj :set nosplitright<CR>:vsplit<CR>
"设置向上分屏
map si :set nosplitbelow<CR>:split<CR>
"设置向下分屏
map sk :set splitbelow<CR>:split<CR>
"刷新vimrc
map R :source $MYVIMRC<CR>
"分屏方向
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j

"打开标签页
map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>


"切换分屏
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"set paste
map <LEADER>sp :set paste<CR>
"markdownpreview
map md :MarkdownPreview<CR>


"方向键改为修改分屏大小
"map <up> :res +5<CR>
"map <down> :res -5<CR>
"map <left> :vertical resize-5<CR>
"map <right> :vertical resize+5<CR>

