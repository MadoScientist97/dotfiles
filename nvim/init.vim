syntax on
filetype plugin on

set exrc
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set scrolloff=8
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/nundodir
set undofile
set incsearch
set guicursor= 
set nohlsearch
set hidden
set ignorecase
set smartcase
set relativenumber
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn
set clipboard+=unnamedplus
set colorcolumn=100
highlight ColorColumn ctermbg=lightred
autocmd VimEnter * hi normal ctermbg=NONE


call plug#begin('~/.local/share/nvim/site/autoload')

Plug 'gruvbox-community/gruvbox'
Plug 'ThePrimeagen/harpoon'
Plug 'jremmen/vim-ripgrep'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'simplenote-vim/simplenote.vim'
Plug 'tpope/vim-surround'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tools-life/taskwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-utils/vim-man'
Plug 'vimwiki/vimwiki'
Plug 'lyuts/vim-rtags'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()


if executable('rg')
    let g:rg_derive_root='true'
endif


let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1
colorscheme gruvbox

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<CR> :Ex <bar> :vertical resize 30<CR>
"nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
