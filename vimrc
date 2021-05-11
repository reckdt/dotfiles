syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ai
set number
set hlsearch
set ruler
set mouse=a

inoremap jk <Esc>
nnoremap zz :update<cr>

autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=zsh | endif

colorscheme peachpuff

" go to last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"auto close {
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'  
  Plug 'sheerun/vim-polyglot'
call plug#end()
