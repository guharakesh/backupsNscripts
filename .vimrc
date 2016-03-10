" Behave like Vim instead of Vi
set nocompatible

" Show a status line
set laststatus=2

" Show the current cursor position
set ruler

" Turn on line numbers
set number

" Enable syntax highlighting
syntax on
filetype on

" Set indents
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

" Searching and patters
set ignorecase
set smartcase

" Disable arrow keys
noremap     <Up>    <NOP>
noremap     <Down>  <NOP>
noremap     <Left>  <NOP>
noremap     <Right> <NOP>
inoremap    <Up>    <NOP>
inoremap    <Down>  <NOP>
inoremap    <Left>  <NOP>
inoremap    <Right> <NOP>

" Filetype specific changes
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.ejs set ft=html
au BufNewFile,BufRead Vagrantfile set ft=ruby
au BufNewFile,BufRead *.sh set ft=javascript
au Filetype javascript,ruby,html,xhtml,xml,css setlocal expandtab sw=2 ts=2 expandtab
au Filetype python setlocal expandtab sw=4 ts=4 cinwords=if,elif,else,for,while,try,except,finally,def,class,with
