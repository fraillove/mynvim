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
nmap nn :lnext<cr>
nmap pp :lprevious<cr>

" Write buffer (save)
noremap <Leader>w :w<CR>
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>

" select all: ctrl+a
map <C-A> ggVG
map! <C-A> <Esc>ggVG

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

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"tabline operation
noremap <leader>tn :tabnew<cr>
noremap <leader>te :tabedit
noremap <leader>tm :tabmove
nnoremap <leader>to :tabonly<cr>

"buffer
nnoremap <leader>bc :BufOnly<CR>
nnoremap <Leader>bo :BufOnly


nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>
map <space> <Plug>(easymotion-prefix)



nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>
"delete buffer
nnoremap <C-x>  :bd<CR>

" 当前行上移下移
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" 添加空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>



" insert keymap like emacs
inoremap <C-w> <C-[>diwa
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k>  <ESC>d$a
inoremap <C-u> <C-G>u<C-U>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <c-n> <down>
inoremap <c-p> <up>
inoremap <C-a> <Home>
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"


" command line alias
"cnoremap w!! w !sudo tee % >/dev/null
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>


" 打开 Typora
autocmd FileType markdown map <leader>md :silent !open -a Typora.app '%:p'<cr>





" Improve scroll, credits: https://github.com/Shougo
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
	\ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-f> max([winheight(0) - 2, 1])
	\ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
	\ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")
