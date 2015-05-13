" Behave like Vim instead of Vi
set nocompatible

" Show a status line
set laststatus=2

" Show the current cursor position
set ruler

" Enable syntax highlighting
syntax on
filetype on

" Set indents
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

" Disable arrow keys
noremap		<Up>		<NOP>
noremap		<Down>	<NOP>
noremap		<Left>	<NOP>
noremap		<Right>	<NOP>
inoremap		<Up>		<NOP>
inoremap		<Down>	<NOP>
inoremap		<Left>	<NOP>
inoremap		<Right>	<NOP>
