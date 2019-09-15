"+++ NERDTree +++
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" autocmd vimenter * NERDTree     " 启动vim默认打开菜单
nnoremap tt :NERDTreeToggle<CR>       " 快速打开隐藏菜单栏

let NERDTreeShowLineNumbers=1   " 是否显示菜单行号
" let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1        " 是否显示隐藏文件
" let NERDTreeWinSize=31          " 设置宽度
let NERDTreeShowBookmarks=1     " 显示书签列表
let NERDTreeHighlightCursorline = 1 " 高亮当前行
let NERDTreeQuitOnOpen = 1      " 从菜单打开文件后关闭菜单
let NERDTreeWinPos ="left"      " 设置菜单在左侧打开，默认值


map <leader>k :NERDTreeToggle<enter>
set grepprg=ag\ --nogroup\ --nocolor
let NERDTreeIgnore=['\~$', '^Godeps$','\.pyc','\~$','\.git$','\.DS_Store','__pycache__','\.idea','\.cache','.python-version', '.swp', '.swo']
