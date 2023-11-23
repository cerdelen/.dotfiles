return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@typeFlash.Config
	opts = {},
	-- stylua: ignore
	keys = {
		{ "<leader>fs", function() require("flash").jump() end, desc = "Flash" },
		{ "<leader>fS", function() require("flash").treesitter() end, desc = "Flash Treesitter" },


		-- { "<leader>fR", function() require("flash").treesitter_search() end, desc = "Treesitter Search" },

		-- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
		-- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
	},
}
