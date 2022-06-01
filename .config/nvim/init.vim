set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

" Char limit column
highlight ColorColumn ctermbg=8
set colorcolumn=120

syntax on
set noswapfile
set ignorecase
set incsearch

" Needed to copy to cliboard when yanking
set clipboard+=unnamedplus

" Set tab mode for file type
autocmd FileType proto setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType cc setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType h setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType py setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType c setlocal shiftwidth=4 softtabstop=4 expandtab

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/ibhagwan/fzf-lua' " Fuzzy find

call plug#end()

" NerdTree bindings
nnoremap <C-n> :NERDTree<CR>
nnoremap <F2> :NERDTreeToggle<CR>

nnoremap <F3>  :TagbarToggle<CR>

nnoremap <C-'> :Terminal bash

inoremap jk <ESC>

nnoremap <C-p> <cmd>lua require('fzf-lua').files()<CR>
nnoremap <C-f> <cmd>lua require('fzf-lua').lines()<CR>
nnoremap <C-g> <cmd>lua require('fzf-lua').grep()<CR>

nnoremap <C-n> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Set ' as the leader key for shortcuts
let mapleader = "'"
