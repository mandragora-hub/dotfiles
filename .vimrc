" Turn syntax highlighting on.
syntax on

" Set match search highlight.
set hlsearch

" Add numbers to each line on the left-hand side.
set number

" Display command in the last line of the screen. 
set showcmd

" Enable relative number.
set relativenumber

" Set custom indentation. View this pages for more info => https://linuxhandbook.com/vim-indentation-tab-spaces/
set noexpandtab
set tabstop=2
set shiftwidth=2

" Automatic Installation of vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()
