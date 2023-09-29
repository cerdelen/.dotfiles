vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correctlazy

-- this is for nvim tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

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

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    -- not so sure about this ... its a search tool to quickly jump to anything visible in the window
    "ggandor/lightspeed.nvim",

    -- harpoon = best
    "ThePrimeagen/harpoon",
    -- powerfull undootree plugin
    "mbbill/undotree",
    -- some git integration stuff
    "tpope/vim-fugitive",
    -- pepeg commenting plugin
    'tpope/vim-commentary',

    -- insane database inregrated tool
    -- https://www.youtube.com/watch?v=NhTPVXP8n7w&ab_channel=DevOpsToolbox

    "mfussenegger/nvim-dap",

    {import = "cerdelen/nvim-tree.lua"},
    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     dependencies = { "kyazdani42/nvim-web-devicons" },

    -- },


    -- {
    --     "folke/noice.nvim",
    --     event = "VeryLazy",
    --     opts = {
    --         cmdline = {
    --             enabled = true, -- enables the Noice cmdline UI
    --             view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
    --             opts = {}, -- global options for the cmdline. See section on views
    --             format = {
    --                 cmdline = { pattern = "^:", icon = "", lang = "vim" },
    --                 search_down = { kind = "search", pattern = "^/", icon = "\"s-down\"", lang = "regex" },
    --                 search_up = { kind = "search", pattern = "^%?", icon = "\"s-up\"", lang = "regex" },
    --                 filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
    --                 lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
    --                 help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
    --                 input = {}, -- Used by input()
    --             },
    --         },
    --     },
    --     dependencies = { "MunifTanjim/nui.nvim" }
    -- },
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
