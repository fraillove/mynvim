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

" 代码折叠 za
" set foldmethod=syntax
" set foldlevel=100

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


" v$  select the current line, but not including the newline character
set selection=exclusive

let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

"===============================
" airline 配置
"===============================
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep       = '▶'
let g:airline_left_alt_sep   = '❯'
let g:airline_right_sep      = '◀'
let g:airline_right_alt_sep  = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" tips
"      g~ : switch the case of character
"


"===============================
" supertab 配置
" https://github.com/ervandew/supertab
"===============================
let g:SuperTabDefaultCompletionType = "<c-n>"




