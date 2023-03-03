" fzf installed path
" If installed using Homebrew
set rtp+=/usr/local/bin/fzf
" If installed using git
set rtp+=~/.fzf
let &packpath = &runtimepath
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>ag :Ag<CR>
" fzf
map <C-f> :FZF<CR>
map <C-r> :MRU<CR>
map <C-g> :Rg<CR>
map <Leader>r :Rg<CR>
command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())
command! -bang -nargs=* Rg
             \ call fzf#vim#grep(
             \ "rg --column --line-number --no-heading --color=always --smart-case --hidden -g '!**/.git/**' -- ".shellescape(<q-args>), 1, <bang>0)

