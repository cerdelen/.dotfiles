return {
    "mbbill/undotree",

    config = function()
        -- this line makes you switch windows to undotree when toggling
        vim.g.undotree_SetFocusWhenToggle = true
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
