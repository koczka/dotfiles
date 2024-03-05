return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"f-person/git-blame.nvim",
		config = function()
			vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
		end,
	},
}
