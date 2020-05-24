function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/preservim/nerdtree.git'
call plug#end()

set number
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line