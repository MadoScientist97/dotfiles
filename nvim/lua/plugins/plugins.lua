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
    use "wbthomason/packer.nvim"                                    -- Manage packer by itself

    -- Look and feel
    use "lunarvim/colorschemes"                                     -- LunarVim colorschemes
    use 'gruvbox-community/gruvbox'                                 -- grubbox theme
    use({ 'rose-pine/neovim', as = 'rose-pine' })                   -- rosepine  theme
    use 'Mofiqul/dracula.nvim'                                      -- Dracula Theme
    use 'kisom/eink.vim'                                            -- eink theme
    use 'soft-aesthetic/soft-era-vim'                               -- Soft-era-vim colorscheme
    use 'kyazdani42/nvim-web-devicons'                              -- devions for nice looking icons
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}      -- Treesitter: better syntax highlighting
    use 'nvim-treesitter/playground'                                -- Treesitter Realtime Parser AST
    -- use 'p00f/nvim-ts-rainbow'                                      -- Treesitter Rainbow brackets support
    use { 'tamton-aquib/staline.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- utils : passive
    use 'christoomey/vim-tmux-navigator'                            -- Tmux integration for pane and window navigation
    use 'dominikduda/vim_current_word'                              -- Current-word-highlight
    use 'nvim-lua/plenary.nvim'                                     -- Usefulm lua function libraries
    use 'nvim-lua/popup.nvim'                                       -- popup implementation for neovim
    use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) -- Preview Markdown Files
    -- use 'mhinz/vim-startify'                                     -- Startify: custom start page when starting vim alone
    use { 'glepnir/dashboard-nvim',
        requires = {'nvim-tree/nvim-web-devicons'}}                 -- Nvim Dashboard (replaces startify)    
    use 'nvim-telescope/telescope.nvim'                             -- Telescope: fzf finder with nice features
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'tpope/vim-surround'                                        -- surround braket pair colors
    use 'akinsho/bufferline.nvim'                                   -- Fancier bufferlien
    use 'NvChad/nvim-colorizer.lua'                                 -- Gives me this -> #FF0000 #00FF00 #0000FF

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
    use 'powerman/vim-plugin-AnsiEsc'
    use 'majutsushi/tagbar'
    use 'farseer90718/vim-taskwarrior'
    use { 'simplenote-vim/simplenote.vim', as='simplenote'}                             -- simplenote

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'

    -- LSP stuff
    use "neovim/nvim-lspconfig"
    -- use "williamboman/nvim-lsp-installer"
    use { "williamboman/mason.nvim" }
    use "williamboman/mason-lspconfig.nvim"
    use {"WhoIsSethDaniel/mason-tool-installer.nvim"}                     -- Mason install tool
    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

    -- formatting
    use "jose-elias-alvarez/null-ls.nvim"                                 -- Null ls formatter/diags
    -- git stuff
    use "lewis6991/gitsigns.nvim"

    -- Debugging
    use 'mfussenegger/nvim-dap'                                           -- Dap (Debug Adapter Protocol) for Nvim
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }  -- UI on top of DAP for Nvim
    use({
      "aurum77/live-server.nvim",
      run = function()
        require"live_server.util".install()
      end,
      cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    })                                                                    -- Live-server integration

    -- Git
    use 'tpope/vim-fugitive'                                           -- fugitive

    -- Java
    use 'mfussenegger/nvim-jdtls'                                         -- Java LSP
    -- unused currently
    -- use 'lyuts/vim-rtags'                                              -- vim bindings for rtags: (c/c++ code indexer)
    -- use 'jremmen/vim-ripgrep'                                          -- vim driver for rip grep
    -- use 'luochen1990/rainbow'                                          -- Rainbow brackets
    -- use 'ryanoasis/vim-devicons'                                       -- vim devicons

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
