return {
	-- quality of life plugins
	{ "vim-scripts/ReplaceWithRegister" }, -- replace with register contents using motion (gr + motion)
	{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"css",
				"toml",
				"yaml",
				"javascript",
				"typescript",
				html = {
					mode = "foreground",
				},
			})
		end,
	}, -- hex code colorizer
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
					"NvimTreeNormal", -- NvimTree
				},
			})
		end,
	},
}
