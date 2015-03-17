set expandtab
set tabstop=4
set number
set shiftwidth=4

"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
"Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

"Mouse and backspace
set mouse=a

" Quicksave command
noremap <C-Z> : update<CR>
vnoremap <C-Z> <C-C>:update:<CR>
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
" screen title
if &term == "screen"
  let &titlestring = "vim(" . expand("%:t") . ")"
  set t_ts=^[k
  set t_fs=^[\
  set title
endif
autocmd TabEnter,WinEnter,BufReadPost,FileReadPost,BufNewFile * let &titlestring = 'vim(' . expand("%:t") . ')'
