return {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    -- event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- dont know what keybinding to set but it would be done like
        -- this and enabling the event
        -- vim.keymap.set("n", "", "<cmd>Silicon<CR>")

        require("silicon").setup({
            -- Configuration here, or leave empty to use defaults
            font = "MesloLGSDZNerdFont-Regular=34",
            theme = "Dracula",
        })
        print('alloooo')
    end,
}
