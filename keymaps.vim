"+++ Keymaps +++
map! jj <esc>
nmap oo o<esc>k
nmap OO O<esc>j
map // :TComment<cr>
nmap /" cs'"
nmap /' cs"'
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv
nmap <C-h> gT
nmap <C-l> gt
nmap nn :lnext<cr>
nmap pp :lprevious<cr>

" open files in a new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" if exists('$TMUX')
"   autocmd filetype * map <leader>r :w<cr>:VimuxRunCommand("clear; tt")<enter>
" else
  autocmd filetype * map <leader>r :w<cr>:!tt<enter>
" endif
"
"
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>
map <space> <Plug>(easymotion-prefix)

" 当前行上移下移
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" 添加空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" 上下左右
map! <c-b> <left>
map! <c-f> <right>
inoremap <c-n> <down>
inoremap <c-p> <up>

" 打开 Typora
autocmd FileType markdown map <leader>md :silent !open -a Typora.app '%:p'<cr>