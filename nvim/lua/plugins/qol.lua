return {
	-- quality of life plugins
	{ "nvim-lua/plenary.nvim" },
	{
		"vim-scripts/ReplaceWithRegister",
		config = function()
			vim.api.nvim_set_keymap("n", "gr", '"+gr', { noremap = false, silent = true })
		end,
	},
	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
}
