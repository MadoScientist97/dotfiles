local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system{
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path
    }
    print "Installing packer. Close and reopen neovim."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to sources for neovim when this file is changed
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]
local status_ok, packer = pcall(require,"packer")
if not status_ok then
    return
end

-- My custom plugins
return packer.startup(function(use)
    --  The package Manager
    use "wbthomason/packer.nvim"                                    -- Manage packer itself
    
    -- Look and feel
    use "lunarvim/colorschemes"                                    -- Manage packer itself
    use 'gruvbox-community/gruvbox'                                 -- grubbox theme
    use 'Mofiqul/dracula.nvim'                                      -- Dracula Theme
    use 'kisom/eink.vim'                                            -- eink theme
    use 'soft-aesthetic/soft-era-vim'                               -- Soft-era-vim colorscheme
    use 'kyazdani42/nvim-web-devicons'                              -- devions for nice looking icons
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}      -- Treesitter: better syntax highlighting
    use 'p00f/nvim-ts-rainbow'                                      -- Treesitter Rainbow brackets support
    
    -- utils : passive
    use 'christoomey/vim-tmux-navigator'                            -- Tmux integration for pane and window navigation
    use 'dominikduda/vim_current_word'                              -- Current-word-highlight
    use 'nvim-lua/plenary.nvim'                                     -- Usefulm lua function libraries
    use 'nvim-lua/popup.nvim'                                       -- popup implementation for neovim
    use {'iamcco/markdown-preview.nvim' , cmd = 'MarkdownPreview'}  -- Preview Markdown Files
    use 'mhinz/vim-startify'                                        -- Startify: custom start page when starting vim alone
    use 'nvim-telescope/telescope.nvim'                             -- Telescope: fzf finder with nice features
    use 'tpope/vim-surround'                                        -- surround braket pair colors
    use 'akinsho/bufferline.nvim'                                   -- Fancier bufferlien
    

    -- utils: active
    use 'windwp/nvim-autopairs'                                     -- autopairs autocompletes "", (),[]... 
    use 'vim-utils/vim-man'                                         -- view man pages in vim
    use 'kyazdani42/nvim-tree.lua'                                  -- nerdtree
    use 'akinsho/toggleterm.nvim'                                   -- toggle term
    use 'markstory/vim-zoomwin'                                     -- zoom window
    use 'moll/vim-bbye'                                    -- bbye?? Need to fill up later

    -- utils: vim core 
    use 'mbbill/undotree'                                           -- undotree
    use 'L3MON4D3/LuaSnip'                                          -- Lua Snippets
    use 'rafamadriz/friendly-snippets'                              -- Snippet collections
    use 'yuttie/comfortable-motion.vim'                             -- comfortable motion
    
    -- vim apps (standalone)
    use 'vimwiki/vimwiki'                                           -- vimwiki: a full featured personal wiki
    use 'ThePrimeagen/vim-be-good'                                  -- vim-practice
    use 'ThePrimeagen/harpoon'                                      -- Primagen harpoon
    
    -- 3rd Party Integration
    use 'tools-life/taskwiki'                                       -- Taskwiki (Taskwarrior integration)
    use 'simplenote-vim/simplenote.vim'                             -- simplenote
    
    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    
    -- LSP stuff
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})
    
    -- git stuff
    use "lewis6991/gitsigns.nvim"
    
    -- unused currently
    -- use 'lyuts/vim-rtags'                                           -- vim bindings for rtags: (c/c++ code indexer)
    -- use 'jremmen/vim-ripgrep'                                       -- vim driver for rip grep
    -- use 'tpope/vim-fugitive'                                        -- fugitive
    -- use 'luochen1990/rainbow'                                       -- Rainbow brackets
    -- use 'ryanoasis/vim-devicons'                                    -- vim devicons

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
