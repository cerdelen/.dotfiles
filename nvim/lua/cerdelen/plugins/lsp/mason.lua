return {
	{ "mason-org/mason.nvim", version = "^1.0.0" },
	dependencies = {
		{ "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
	},
	-- "williamboman/mason.nvim",
	-- dependencies = {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- },
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"clangd",
				"rust_analyzer",
				"lua_ls",
				-- "graphql",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})
	end,
}
