require("cerdelen.options")
require("cerdelen.keymaps")
require("cerdelen.lazy_init")


local autocmd = vim.api.nvim_create_autocmd

-- removing any whitespaces at end of line
autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

