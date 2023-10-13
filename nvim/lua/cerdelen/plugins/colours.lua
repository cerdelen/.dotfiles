return{
    'dracula/vim',
    priority = 1000, -- make sure to load this before all the other start plugins
    as = 'dracula',
    config = function()
        disable_background = true
        vim.api.nvim_set_option('background', 'dark')

        -- makes background transparent (so i see catto)
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.cmd('colorscheme dracula')
    end,
}
