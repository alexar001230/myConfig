call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'kdheepak/lazygit.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'yggdroot/leaderf'
Plug 'blueshirts/darcula'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'frazrepo/vim-rainbow'
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'rbgrouleff/bclose.vim'
Plug 'rking/ag.vim'
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'benmills/vimux'
Plug 'makerj/vim-pdf'
Plug 'voldikss/vim-floaterm'
Plug 'mfussenegger/nvim-jdtls'
call plug#end()
lua << EOF
require('vim')
require'lspconfig'.tsserver.setup{}
require'lspconfig'.gopls.setup{}
-- require'lspconfig'.java_language_server.setup{}


require'nvim-treesitter.configs'.setup{
    -- 启用高亮
    highlight = {
        enable = true,
	-- 禁用 vim 基于正则达式的语法高亮，太慢
        additional_vim_regex_highlighting = false,
    },
    -- 启用缩进
    indent = {
        enable = true,
    },
}
EOF

" 其他vim插件相关配置
for s:path in split(glob('~/.config/nvim/vim-settings/*.vim'), "\n")
  exe 'source ' . s:path
endfor

