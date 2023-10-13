-- nvim v0.8.0
return(
    {
        "kdheepak/lazygit.nvim",
        dependencies =  {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("telescope").load_extension("lazygit")
            vim.keymap.set("n", "<leader>lg", vim.cmd.LazyGit)
        end,
    }
)
