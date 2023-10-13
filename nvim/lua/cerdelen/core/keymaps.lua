local opts = { noremap = true, silent = true }

vim.g.mapleader = " "



-- INSERT MODE
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- vim.keymap.set("n", "<leader>pv", ":Lex 25<CR>", opts)
vim.keymap.set("n", "<S-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<S-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<S-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<S-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)


-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv^", opts)
vim.keymap.set("v", ">", ">gv^", opts)

-- Move text up and down
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<S-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<R-k>", ":m '<-2<CR>gv=gv", opts)


-- next greatest remap ever : asbjornHaland
-- yanking into pc clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- deleting without yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


-- selects what is below your cursour to rename it
-- vim.keymap.set("n", "<leader>s", function()
--     vim.cmd("set hlsearch")
--     -- local Target = vim.fn.input("Search > ")
--     -- vim.cmd("/" .. Target)
--     -- vim.cmd([[/I<Left>]])
-- end)

-- vim.keymap.set("n", "<Esc>", function()
--     vim.cmd("nohl")
-- end) 

vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Terminal mode
-- getting out of Terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>t", function()
    vim.cmd([[:split]])
    vim.cmd([[:winc j]])
    vim.cmd([[:resize -6]])
    vim.cmd([[:term]])
    vim.cmd([[:startinsert]])
end)

vim.keymap.set("n", "<leader><tab><tab>", ":set invlist<CR>", opts)
vim.keymap.set("n", "<leader>sh", ":set hlsearch<CR>", opts)
vim.keymap.set("n", "<leader>so", ":noh<CR>", opts)
