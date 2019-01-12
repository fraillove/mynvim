"+++ NERDTree +++
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <leader>k :NERDTreeToggle<enter>
set grepprg=ag\ --nogroup\ --nocolor
let NERDTreeIgnore=['\~$', '^Godeps$']
