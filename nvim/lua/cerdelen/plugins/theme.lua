function ColorMyPencils(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
        "dracula/vim",
	    priority = 1000, -- make sure to load this before all the other start plugins
        as = "dracula",
        config = function()
            disable_background = true
            vim.api.nvim_set_option('background', 'dark')
            vim.cmd('colorscheme dracula')
            ColorMyPencils()
        end
}
