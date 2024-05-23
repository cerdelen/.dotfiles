vim.g.mapleader = " "

-- move Lines with capital J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remaps J to do the same (\n end of line gets deleted) but keep cursor position
vim.keymap.set("n", "J", "mzJ`z")
-- remaps <C-d> and <C-u> to do the same(scroll a page up/down)
-- followed by zz(centering line)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- remaps n and N to do the same but also center new found
-- positions and do zv(opens folds)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to systems clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- in visual mode paste without yanking selected Text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- formating using lsp format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigating quickfixlist and then centering
-- cnext/cprev quickfixlist; lnext/lprev location list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- my own mapping (experimental)
vim.keymap.set("n", ">", ">>:let sw = &shiftwidth<CR>:execute 'normal ' . sw . 'l'<CR>", { silent = true })
vim.keymap.set("n", "<", "<<:let sw = &shiftwidth<CR>:execute 'normal ' . sw . 'l'<CR>", { silent = true })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv^", { silent = true })
vim.keymap.set("v", ">", ">gv^", { silent = true })

-- searching for word under cursor and replacing ever occurrance in buffer
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("v", "<leader>S", [[:s/\v%V//g<Left><Left><Left>]])
-- I'm too stupid to create a mapping taking what is in visual mode and looking for it in whole buffer to be replaced

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
