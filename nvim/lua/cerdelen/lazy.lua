vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- theme has to be first
    {
        'dracula/vim',
        as = 'dracula',
        -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
        -- priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- disable_background = true
            vim.cmd('colorscheme dracula')
            vim.api.nvim_set_option('background', 'dark')
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    {
        "folke/which-key.nvim",
        even = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            key_labels = {
                ["<tab>"] = "TAB",
                ["<space>"] = "SPC",
                ["<leader>"] = "LEADER",
            },
        }
    },

    -- treesitter with playground
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    'nvim-treesitter/playground',

    -- plugin to configure neovim with json files (can have global configs or local)
    {
        "folke/neoconf.nvim",
        cmd = "Neoconf"
    },

    -- lsp server for lua
    "folke/neodev.nvim",

    -- floating terminals
    -- 'voldikss/vim-floaterm',

    {
        {
            'akinsho/toggleterm.nvim',
            version = "*",
            opts = { 
                open_mapping = [[<c-\>]],
                winbar = {
                    enabled = false,
                    name_formatter = function(term) --  term: Terminal
                        return term.name
                    end
                },
            },
        },
    },

    -- harpoon = best
    "ThePrimeagen/harpoon",
    -- powerfull undootree plugin
    "mbbill/undotree",
    -- some git integration stuff
    "tpope/vim-fugitive",
    -- pepeg commenting plugin
    'tpope/vim-commentary',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
})
