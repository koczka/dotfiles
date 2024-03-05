return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
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
		opts = {
			automatic_installation = true,
		},
	},
}
