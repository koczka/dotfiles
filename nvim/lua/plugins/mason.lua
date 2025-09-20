return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
 {
    'mason-org/mason-lspconfig.nvim',
    dependencies = { 'neovim/nvim-lspconfig' },
    opts = {}
  },
}
