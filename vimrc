set expandtab
set shiftwidth=2
set tabstop=2
set number
set autoindent
set hlsearch

set laststatus=2
set statusline=%f%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [%l;%L;%p%%,%v]\ 

" http://oldwiki.rubyonrails.org/rails/pages/HowToUseVimWithRails
set nocompatible
syntax on
filetype plugin indent on
" Load matchit (% to bounce from do to end etc.)
runtime! macros/matchit.vim

augroup myfiletype
  " clear old autocmds in group
  autocmd!
  " autoindent with two spaces, alwats expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

set viminfo='30,\"150,:40,%,n~/.viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
 autocmd!
 autocmd BufWinEnter * call ResCur()
augroup END
