let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" " neocomplete like
" set completeopt+=noinsert
" " deoplete.nvim recommend
" set completeopt+=noselect
"
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#use_cache = 1
" let g:deoplete#sources#go#json_directory = $GOPATH.'/deoplete-cache'
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" autocmd CompleteDone * pclose!



" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
" let g:ycm_collect_identifiers_from_comments_and_strings = 0

" 开启 YCM 基于标签引擎
" let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
" let g:ycm_min_num_of_chars_for_completion = 2
" 禁止缓存匹配项,每次都重新生成匹配项
" let g:ycm_cache_omnifunc = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1


let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
