" vimux
autocmd bufenter * if (winnr("$") == 1 && exists("b:Vimux") && b:Vimux.isTabTree()) | q |
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
let g:VimuxHeight = "40"



