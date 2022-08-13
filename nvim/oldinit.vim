syntax on
filetype plugin on

set exrc
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set scrolloff=8
set noswapfile
set nobackup
set undodir=~/.vim/nundodir
set undofile
set incsearch
set guicursor= 
"set nohlsearch
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
Plug 'christoomey/vim-tmux-navigator'
Plug 'dominikduda/vim_current_word'
Plug 'ThePrimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'iamcco/markdown-preview.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'kisom/eink.vim'
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
Plug 'soft-aesthetic/soft-era-vim'
Plug 'lyuts/vim-rtags'
Plug 'luochen1990/rainbow'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'markstory/vim-zoomwin'
Plug 'akinsho/toggleterm.nvim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()


if executable('rg')
    let g:rg_derive_root='true'
endif

"Pyexec path
let g:python3_host_prog='/bin/python3'

let g:gruvbox_italic=1
let g:dracula_italic=1
let g:gruvbox_transparent_bg=1
let g:dracula_transparent_bg=1

"colorscheme eink
colorscheme gruvbox

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
" <Ctrl-l> redraws the screen and removes any search highlighting.
"General Commands
nnoremap <silent> <Esc><Esc> <Esc>:nohl<CR><Esc>

nnoremap <leader><S-J> :m .+1<CR>==
nnoremap <leader><S-K> :m .-2<CR>==
"inoremap <leader>J <Esc>:m .+1<CR>==gi
"inoremap <leader>K <Esc>:m .-2<CR>==gi
vnoremap <leader-J> :m '>+1<CR>gv=gv
vnoremap <leader-K> :m '<-2<CR>gv=gv

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
"nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

"Nerdtree Keybinds
nnoremap <leader>nt :NERDTreeToggle<CR>

nnoremap <silent> <leader>cc :VimCurrentWordToggle<CR>
nnoremap <leader>T :ToggleTerm size=40 dir=~/ direction=float<CR>

"Vimwiki Specific Stuff
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'ext2syntax': {'.md':'markdown','.markdown':'markdown','mdown':'markdown','mdk':'markdown'}}]

"Coc-settings
autocmd FileType markdown let b:coc_suggest_disable = 1 "ignore coc suggestions in markdown files


"Nerdtree Start
augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
augroup END

"current_word settings
let g:vim_current_word#excluded_filetypes = ['md']
hi CurrentWord ctermbg=240
hi CurrentWordTwins ctermbg=240
let g:vim_current_word#enabled = 0


"Simplenote  Configs
let g:SimplenoteFiletype="markdown" 

"Toggle term Toggle
