call plug#begin('~/.config/nvim/plugged')
	Plug 'morhetz/gruvbox'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
        Plug 'posva/vim-vue'
call plug#end()

set showcmd
let mapleader = ","

filetype on
syntax on
set number
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
set background=dark

set showmatch

"Indenting
filetype indent on
set nowrap
set tabstop=8
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" With help from https://statico.github.io/vim.html

"Search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <silent> <Leader>q :nohlsearch<CR>

nmap <silent> <Leader>l :setlocal number!<CR>
nnoremap <Leader><Leader> :e#<CR> " opens the previously viewed buffer

" CtrlP-settings
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
nmap <silent> ; :CtrlPBuffer<CR>

let NERDTreeQuitOnOpen = 0 "Dont close NerdTree when you open a file
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
nmap <silent> <Leader>n :NERDTreeToggle<CR>

set mouse=a

" Open splits 
set splitbelow
set splitright
