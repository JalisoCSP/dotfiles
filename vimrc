execute pathogen#infect()
syntax on
colorscheme sublimemonokai

hi StatusLine ctermbg=178 ctermfg=black cterm=NONE
hi StatusLineNC ctermbg=8 ctermfg=178 cterm=NONE

" ctrl p
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
end
let g:ctrlp_match_window = 'min:1,max:50'

set runtimepath^=~/.dotfiles/vim/bundle/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set nocompatible
set ruler
set colorcolumn=80
set textwidth=80
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
map <Leader>w :w<cr>:execute "!bin/rspec %:" . line(".")<CR>
map <Leader>ww :w<cr>:execute "!bin/rspec %"<CR>
map <Leader>r :execute "!bin/rspec %:" . line(".")
map <Leader>rr :execute "!bin/rspec %"
map <Leader>rs :execute "!bin/rspec"
map <Leader>pp :execute "!bin/rails parallel:prepare"
map <Leader>rp :execute "!bin/rails parallel:spec"
map <Leader>t :execute "!bin/rails test"
map <Leader>b :execute "!git blame %"
map <Leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)
" https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
map <Leader>y "+y
map <Leader>p "+p
map <Leader>. :e ~/.dotfiles/vimrc
map <Leader>s :e db/schema.rb
map <Leader>db :e config/database.yml
map <Leader>n :e ~/Documents/notes

command! Q q
command! Qall qall
command! E e
command! W w
command! Vs vs
command! Wq wq

command! -nargs=+ Vg call VimgrepHelperFunc(<f-args>)
function! VimgrepHelperFunc(...)
  if a:0 > 1
    let filetype=a:2
  else
    let filetype='rb'
  endif
  execute ':vimgrep "' . a:1 . '" **/*.' . filetype
endfunction

command! -nargs=+ Gr call GlobalSearchAndReplaceFunc(<f-args>)
function! GlobalSearchAndReplaceFunc(...)
  execute 'args `grep -r -l ' . a:1 . ' app/ spec/ lib/` | argdo %s/' . a:1 . '/' . a:2 . '/gI | update'
endfunction

highlight ws ctermbg=DarkGrey guibg=DarkGrey
match ws /\s\+$/
autocmd BufWinEnter * match ws / \+$/
