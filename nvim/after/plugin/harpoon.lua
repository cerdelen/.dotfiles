local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- adds file to harpoon list (i think in last position)
vim.keymap.set("n", "<leader>a", mark.add_file) 
-- pops up open a list of current buffers in harpon list
-- i can edit the list by directly editing it in the menu 
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu) 

-- opens up file on a givven index
vim.keymap.set("n", "<C-a>", function() ui.nav_file(1) end) 
vim.keymap.set("n", "<C-s>", function() ui.nav_file(2) end) 
vim.keymap.set("n", "<C-d>", function() ui.nav_file(3) end) 
vim.keymap.set("n", "<C-f>", function() ui.nav_file(4) end) 
