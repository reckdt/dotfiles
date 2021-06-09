syntax enable
colorscheme peachpuff

" automatically indent new lines
set autoindent

" automatically write files when changing when multiple files open
set autowrite

" activate line numbers
set number

" turn col and row position on in bottom right
set ruler " see ruf for formatting

" show command and insert mode
set showmode

" wrap around when searching
set wrapscan

" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab

" more risky, but cleaner
set nobackup
set noswapfile
set nowritebackup

" highlight search hits
set hlsearch
set incsearch
set linebreak

set backspace=indent,eol,start

" key maps
set mouse=a
inoremap jk <Esc>
nnoremap zz :update<cr>

" bash for files with no extension
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=bash | endif

" go to last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

call plug#begin()
	Plug 'sheerun/vim-polyglot'
call plug#end()
