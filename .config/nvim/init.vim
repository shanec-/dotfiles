syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set nu 
set nohlsearch
set nowrap
set smartindent
set colorcolumn=100
set scrolloff=8
set noshowmode

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'stsewd/fzf-checkout.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'

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
nnoremap <Leader>p "0p

nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <C-g> <cmd>Telescope git_files<CR>
nnoremap <C-o> <cmd>Telescope buffers<CR>

nnoremap <C-f> <cmd>Telescope live_grep<CR>
nnoremap <C-/> :Commentary<CR>
" nnoremap <C-p> :Files<CR>
" nnoremap <C-g> :GFiles<CR>
" nnoremap <C-o> :Buffers<CR>
" nnoremap <C-f> :Rg 
" nnoremap <C-/> :Commentary<CR>


let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

nnoremap <Leader>gy :Goyo<CR>

function s:goyo_enter() 
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status off
        silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    Limelight
    set wrap linebreak
endfunction

function s:goyo_leave() 
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status on
        silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    Limelight!
    set nowrap
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave() 

