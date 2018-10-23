filetype off
syntax on
filetype indent plugin on

set t_Co=256
set encoding=UTF-8

colorscheme spacegray

set number
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set nocompatible
set hidden
set history=100
set laststatus=2

imap jk <esc>

let mapleader = "\<Space>"
nnoremap <Leader>; :w<CR>
nmap <Leader><Leader> :bnext<CR>
nnoremap <Leader>l :bn<cr>
nnoremap <Leader>h :bp<cr>

nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|elm-stuff'

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
set list
set listchars=tab:⩥\ ,trail:∙

let g:javascript_conceal_arrow_function = "⇒ "
let g:javascript_conceal_noarg_arrow_function = "○"
set conceallevel=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_alt_sep = '❯'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='bubblegum'
