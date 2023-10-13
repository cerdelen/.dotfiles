return {
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
    },
    config = function()
        local wk = require("which-key")

        wk.register({
            y = "Yank into PC register (marked text)",
            Y = "Yank into PC register (Full line)",
            d = "Delete without yanking",
            S = "Replace all occurrences of word",
            a = "Add current buffer to Harpoon (only in buffer)",
            u = "UndooTree Toggle",
            t = "Open Terminal",
            l = {
                name = "LazyGit",
                g = "LazyGit",
            },
			Tab = {
				name = "Show tabs",
				Tab = "Show tabs",
			},
            r = { name = "LSP", },
            w = { name = "Session managing", },
            e = {
                name = "Nvim File-Tree",
                e = "Toggle Tree",
                f = "Toggle Tree (opens at current File)",
                r = "Reloads Tree",
                c = "Collapse Tree",
            },
            p = {
                name = "Finding Files", -- optional group name
                f = "Telescope", -- just a label. don't create any mapping
                s = "Grep all Files", -- same as above
                v = "Vim Filetree",
                g = "Telescope Git",
            },
        }, { prefix = "<leader>" })
    end,
}
