return {
	'dracula/vim',
	priority = 1000,
	as = 'dracula',
	config = function()
		disable_background = true
		vim.api.nvim_set_option('background', 'dark')
		vim.cmd('colorscheme dracula')
	end,
}
