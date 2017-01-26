
" Initialization commands for vim
"
" Additional documentation is available at:
"   http://vimdoc.sourceforge.net

" Alternative terminal types
"
" set term=builtin_ansi
" set term=sun-color

set nocompatible        "required
filetype off            "required

"set the runtime path to include Vundle and initialize
filetype plugin on
set rtp=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versionso of Vundle used Bundle instead of Plugine)
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required

set term=xterm-color

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1



" Enable folding with the spacebar
nnoremap <space> za


" Don't force vim to act like vi
"
set nocompatible


" Use 80 as the width of one line and wrap long lines
"
set textwidth=80
set wrap


" Show status info at the bottom of the screen
"
set showcmd
set ruler


" Enable syntax highlighting
"
syntax on


" Enable C/C++ indenting
"
set cindent


" Expand tabs into 2 spaces (except for makefiles)
"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType  make      setlocal noexpandtab
autocmd FileType  makefile  setlocal noexpandtab



set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
