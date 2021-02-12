

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()


syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber

colorscheme gruvbox
set background=dark


let mapleader = " "

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

