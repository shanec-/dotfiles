syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set nu 
set nohlsearch
set nowrap
set smartindent
set colorcolumn=80
set scrolloff=8

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

colorscheme gruvbox
set background=dark

let mapleader = " "

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :Sex!<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>


nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-f> :Rg 