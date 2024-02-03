return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	-- Optional; default configuration will be used if setup isn't called.
	config = function()
		require("everforest").setup({
			-- Your config here
		})

		vim.api.nvim_set_hl(0, "StatusLineNC", {})
		vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", {})
		vim.cmd.colorscheme("everforest")
	end,
}
