return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"jay-babu/mason-null-ls.nvim",
		lazy = false,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local mason_null_ls = require("mason-null-ls")

			mason_null_ls.setup({
				automatic_installation = true,
				ensure_installed = {
					"prettier",
					"stylua",
					"eslint_d",
				},
			})
		end,
	},
}
