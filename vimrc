execute pathogen#infect()
syntax on
colorscheme sublimemonokai

" ctrl p
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
end
let g:ctrlp_match_window = 'min:1,max:50'
let g:ctrlp_max_files = 20000

set nocompatible
set ruler
set showcmd
set cmdheight=2
set number
set relativenumber
set nowrap
set hlsearch
set incsearch
set ignorecase smartcase
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let mapleader = ","
imap jj <esc>
map <Leader>rr :execute "!bin/rspec %:" . line(".")
map <Leader>r :execute "!bin/rspec %"

command -nargs=+ Vg :vimgrep <args> **/*.rb
command! Q q
command! E e
command! W w

