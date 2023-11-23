return {
	"ThePrimeagen/git-worktree.nvim",
	conf = function()
		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")

		local opts = { noremap = true, silent = true }

		-- vim.keymap.set(
		-- 	"n",
		-- 	"<Leader>gs",
		-- 	"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
		-- 	opts
		-- )
		-- vim.keymap.set("n", "<leader>a", mark.add_file)
	end,
	print("set the new ketmaps"),
}
-- "ThePrimeagen/harpoon",
--
--
-- config = function()
--     local mark = require("harpoon.mark")
--     local ui = require("harpoon.ui")
--
--     vim.keymap.set("n", "<leader>a", mark.add_file)
--     vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
--     vim.keymap.set("n", "<C-a>", function() ui.nav_file(1) end)
--     vim.keymap.set("n", "<C-s>", function() ui.nav_file(2) end)
--     vim.keymap.set("n", "<C-d>", function() ui.nav_file(3) end)
--     vim.keymap.set("n", "<C-f>", function() ui.nav_file(4) end)
-- end
--
