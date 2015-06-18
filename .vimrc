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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
syntax on

" Smaller tabs for certain file types
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType sass setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType js setlocal tabstop=2 shiftwidth=2 softtabstop=2

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
set textwidth=79
set colorcolumn=79

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
" Search fixes: center display line after search
nnoremap n nzz
nnoremap N Nzz

" Navigation on display lines
"nnoremap j gj
"vnoremap j gj
"nnoremap k gk
"vnoremap k gk

" Fonts and colors
colorscheme desert
colorscheme solarized
set background=light
set guifont=Consolas:h14
set guifont=Menlo:h14
set guifont=Source_Code_Pro:h14

" Key mappings
" - Remove trailing whitespace
:map <F3> :s:[.]\s\+:.\r:g
" - Merge blocks of text (append excl. mark to join without space)
:map <F4> :1,g/^/''+m.<bar>-j

" Highlighting and encoding
set encoding=utf-8
set showcmd

" Force syntax for certain extensions
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Markdown highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

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

