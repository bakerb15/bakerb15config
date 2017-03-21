" Initialization commands for vim
"
" Additional documentation is available at:
"   http://vimdoc.sourceforge.net

set nocompatible        "required
filetype off            "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
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
Plugin 'indentpython'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'WolfgangMehner/c-support' 
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required


colors zenburn

let python_highlight_all=1
syntax on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Flag wdWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkredhite 

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set nu

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

"  Enable folding with the spacebar
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

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

set encoding=utf-8

