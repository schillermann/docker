function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'

  " Include Phpactor
  Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

  " Require ncm2 and this plugin
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'phpactor/ncm2-phpactor'
call plug#end()

set number
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect