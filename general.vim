"+++ General +++
set shell=zsh
let mapleader=","
set noswapfile
autocmd BufWritePre * :%s/\s\+$//e "strip trailing white space
set nrformats=hex
set nocompatible
syntax on
filetype plugin indent on
set noerrorbells
set nobackup
set encoding=utf-8
set autowrite
set autoread
set laststatus=2
set backspace=indent,eol,start
set clipboard=unnamed
" let $PATH = "/usr/local/bin:".$PATH
let $PATH = $PATH

" 去掉搜索高亮
:nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

"  多窗口移动
"  https://stackoverflow.com/questions/6403716/shortcut-for-moving-between-vim-windows
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile
function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction
set statusline=win:%{WindowNumber()}

set inccommand=split

let g:titlecase_map_keys = 0

let g:python3_host_prog = '/usr/local/bin/python3'


" 打字机模式
if !exists('noalwayscenter')
    " Calculate proper scrolloff
    autocmd VimEnter,WinEnter,VimResized,InsertLeave * :let &scrolloff = float2nr(floor(winheight(0)/2)+1)
    autocmd InsertEnter * :let &scrolloff = float2nr(floor(winheight(0)/2))
    " Use <Enter> to keep center in insert mode, need proper scrolloff
    inoremap <CR> <CR><C-o>zz
endif