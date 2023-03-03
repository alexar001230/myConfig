" 支持中文编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,big5,euc-jp,euc-kr,lantin1
set termencoding=utf-8
set encoding=utf-8
" 设置leader键
let mapleader="\\"
" 默认显示行号
set nu
" 查找不区分大小写
set ic
" 语法高亮
syntax enable
" 剪切板为无名寄存器
set clipboard=unnamed
noremap <c-c> yy
" noremap <c-v> p
set ruler
set hlsearch
set cursorline
set cursorcolumn
set ts=4
set autoindent
set gcr=a:block-blinkon1
highlight Cursor ctermfg=188 ctermbg=256 guifg=#2b2b2b guibg=#a9b7c6
autocmd BufRead,BufNewFile *.md setlocal spell
set softtabstop=4
set shiftwidth=4
set expandtab
" 未保存或只读文件弹出确认
set confirm
" 高亮显示对应的括号
set showmatch
" 设置主题
colorscheme darcula
" 到行尾快键
noremap <c-e> <end>
noremap <C-A> ^
