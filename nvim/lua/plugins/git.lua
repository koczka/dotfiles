return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"f-person/git-blame.nvim",
		config = function()
			vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
		end,
	},
}
