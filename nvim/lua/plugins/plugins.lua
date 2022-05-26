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
    use "wbthomason/packer.nvim"                                    -- Manage packer itself
    use "lunarvim/colorschemes"                                    -- Manage packer itself
    use 'christoomey/vim-tmux-navigator'                            -- Tmux integration
    use 'dominikduda/vim_current_word'                              -- Current-word-highlight
    use 'ThePrimeagen/vim-be-good'                                  -- vim-practice
    use 'gruvbox-community/gruvbox'                                 -- grubbox theme
    use {'iamcco/markdown-preview.nvim' , cmd = 'MarkdownPreview'}  -- Preview Markdown Files
    use 'Mofiqul/dracula.nvim'                                      -- Dracula Theme
    use 'ThePrimeagen/harpoon'                                      -- Primagen harpoon
    use 'kisom/eink.vim'                                            -- eink theme
    use 'jremmen/vim-ripgrep'                                       -- Ripgrep
    use 'nvim-lua/popup.nvim'                                       -- popup implementation for neovim
    use 'nvim-lua/plenary.nvim'                                     -- Usefulm lua function libraries
    use 'mhinz/vim-startify'                                        -- Startify
    use 'simplenote-vim/simplenote.vim'                             -- simplenote
    use 'tpope/vim-surround'                                        -- surround braket pair colors
    use 'nvim-telescope/telescope.nvim'                             -- Telescope
    use 'tools-life/taskwiki'                                       -- Taskwiki
    use 'windwp/nvim-autopairs'                                      -- autopairs
    use 'vim-utils/vim-man'                                         -- view man pages in vim
    use 'vimwiki/vimwiki'                                           -- vimwiki
    use 'soft-aesthetic/soft-era-vim'                               -- Soft-era-vim colorscheme
    use 'lyuts/vim-rtags'                                           -- rtags
--    use 'luochen1990/rainbow'                                       -- Rainbow brackets
    use 'kyazdani42/nvim-web-devicons'                              -- devions for nerdtree
    
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}      -- Treesitter
    use 'p00f/nvim-ts-rainbow'                           -- Treesitter Rainbow
    
    
    use 'tpope/vim-fugitive'                                        -- fugitive
    use 'mbbill/undotree'                                           -- undotree
    use 'L3MON4D3/LuaSnip'                                          -- Lua Snippets
    use 'rafamadriz/friendly-snippets'                              -- Snippet collections
--    use 'scrooloose/nerdtree'                                       -- nerdtree
    use 'kyazdani42/nvim-tree.lua'                                  -- nerdtree
    use 'markstory/vim-zoomwin'                                     -- zoom window
    use 'akinsho/toggleterm.nvim'                                   -- toggle term
    use 'yuttie/comfortable-motion.vim'                             -- comfortable motion
    use 'ryanoasis/vim-devicons'                                    -- vim devicons
    

    use 'akinsho/bufferline.nvim'                                   -- Fancier bufferlien
    use 'moll/vim-bbye'                                    -- bbye?? Need to fill up later

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
    

    use "lewis6991/gitsigns.nvim"
    

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
