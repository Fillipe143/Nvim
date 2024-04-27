-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use "ThePrimeagen/harpoon"
    use "ThePrimeagen/vim-be-good"
    -- use 'Exafunction/codeium.vim'

    use { 'mg979/vim-visual-multi', branch = 'master' }
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

--    use {
--        'Exafunction/codeium.nvim',
--        requires = {
--            'nvim-lua/plenary.nvim',
--            'hrsh7th/nvim-cmp',
--        },
--        config = function()
--            require('codeium').setup({})
--        end
--    }

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        }
    }

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use {
        "ellisonleao/gruvbox.nvim", as = "gruvbox",
        config = function()
            vim.cmd("colorscheme gruvbox")
            if ColorMyPencils ~= nil then ColorMyPencils() end
        end
    }
end)
