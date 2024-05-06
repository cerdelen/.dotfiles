require("cerdelen.options")
require("cerdelen.keymaps")
require("cerdelen.lazy_init")

local augroup = vim.api.nvim_create_augroup
local CerdelenGroup = augroup('Cerdelen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

-- removing any whitespaces at end of line
autocmd({"BufWritePre"}, {
    group = CerdelenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
