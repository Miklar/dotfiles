lua require('plugins')

set showcmd
let mapleader = ","

filetype on
syntax on
set number
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
set background=dark
set termguicolors

set showmatch

"Indenting
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" With help from:
" https://statico.github.io/vim.html
" https://rudism.com/coding-csharp-in-neovim/

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

" Omnisharp keybindings
nnoremap <leader>fu <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>gd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>gt <cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>
nnoremap <leader>gi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader>dn <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <leader>dN <cmd>lua vim.lsp.diagnostic.prev()<cr>
nnoremap <leader>dd <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap <leader>dD <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>
nnoremap <leader>xx <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>xd <cmd>lua vim.lsp.buf.range_code_action()<cr>

" Telescope keybinding
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

set mouse=a
" Puts selected text into clipboard
vmap <LeftRelease> "*ygv

" Open splits 
set splitbelow
set splitright
