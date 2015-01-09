" Configure pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Remove vi compatibility
set nocompatible

" Prevent modeline security issues
set modelines=0

" Tab and indentation settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
syntax on

" Always show status line
set laststatus=2

" Relative line numbers (new in 7.3)
set relativenumber

" Create undo files to undo after file closes (new in 7.3)
set undofile

" Map leader key to ,
let mapleader = ","

" Highlight current line
set cursorline

" Enable line wrapping on whole words
set wrap
set lbr
set textwidth=99
set colorcolumn=99

" Disable help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Searching
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
set autochdir

" Search fixes: use normal regular expressions
nnoremap / /\v
vnoremap / /\v
" Search fixes: center display line after serach
nnoremap n nzz
nnoremap N Nzz

" Navigation on display lines
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Fonts and colors
colorscheme torte
colorscheme desert
set guifont=Menlo:h14

" Key mappings
:map <F3> :s:[.]\s\+:.\r:g
:map <F4> :s:\([A-Za-z.]\),\(\w\):\1 \2:g

" Highlighting and encoding
set encoding=utf-8
set showcmd

" Spell checker settings
set spell spelllang=nl,en
nnoremap <leader>f 1z=

" Makes the dot work in visual select mode
vnoremap . :norm.<CR>

" Airline customization
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

