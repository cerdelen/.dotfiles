local builtin = require("telescope.builtin")

-- opens telescope for all files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- opens telescope for git files in git project for example excluding .gitignored_files (node_modules LOL)
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
