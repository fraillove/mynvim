" +++ Plugins
call plug#begin()
Plug 'christoomey/vim-titlecase'

Plug 'nsf/gocode'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'sebdah/vim-delve'
Plug 'benmills/vim-golang-alternate'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'rking/ag.vim'
" Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'         " 快速跳转
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'         " 配对符号补全
Plug 'Raimondi/delimitMate'
Plug 'mustache/vim-mustache-handlebars'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'         " 文件管理器
Plug 'majutsushi/tagbar'           " 查看当前代码文件中的变量和函数列表的插件，可以切换和跳转到代码中对应的变量和函数的位置
" Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'    " 注释代码

Plug 'vim-airline/vim-airline'     " 状态栏美化
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" markdown 预览
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'Chiel92/vim-autoformat'
Plug 'millermedeiros/vim-esformatter'

Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-markdown'

Plug 'kana/vim-textobj-user'
Plug 'https://github.com/whatyouhide/vim-textobj-erb'

Plug 'tpope/vim-surround'         " 快速切换括号/引号或者标签
Plug 'janko-m/vim-test'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'sbdchd/neoformat'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --js-completer' }
" Plug 'benmills/vimux'
"
" Plug 'tpope/vim-rsi'
Plug 'mklabs/split-term.vim'
" Plug 'floobits/floobits-neovim'
Plug 'Lokaltog/vim-easymotion'    " 快速跳转
Plug 'skwp/vim-html-escape'

Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

Plug 'kien/rainbow_parentheses.vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'tpope/vim-dadbod'

Plug 'cespare/vim-toml'
Plug 'godoctor/godoctor.vim', { 'do': ':GoDoctorInstall'}
" Plug 'blueyed/vim-diminactive'
Plug 'machakann/vim-highlightedyank'

Plug 'unblevable/quick-scope'


call plug#end()
