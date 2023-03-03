set autowrite
let g:go_bin_path = $GOPATH
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:rehash256 = 1
let g:molokai_original = 1
let g:go_guru_scope = ["/Users/lijie/Desktop/work/shopee/retail"]
colorscheme molokai
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
autocmd FileType go nmap <Leader>gr <Plug>(go-referrers)
autocmd FileType go nmap <Leader>gi <Plug>(go-implements)
