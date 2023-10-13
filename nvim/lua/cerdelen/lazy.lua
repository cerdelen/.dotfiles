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

-- some terminal plguin as my current solution is shit
-- maximizer plugin to have my setup but get my got into fullscreen (primeagen zenmode config maybe)
-- linter/formatter
-- dadbod/dadbod ui (plugins for database integration) "tpope/vim-dadbod"
-- maybe debug adapter??? e.g. "mfussenegger/nvim-dap"
require("lazy").setup(
	{{import = "cerdelen.plugins"}, {import = "cerdelen.plugins.lsp"}},
	{
		install = {
			colorscheme = { "dracula" },
		},
		checker = {
			enabled = true,
			notify = false,
		},
		change_detection = {
			notify = false,
	},
})
