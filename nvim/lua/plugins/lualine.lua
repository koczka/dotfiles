return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local git_blame = require("gitblame")
		local lualine = require("lualine")
		--

		lualine.setup({
			options = {
				-- theme = "catppuccin",
				section_separators = { left = " ", right = " " },
				component_separators = { left = "|", right = "|" },
			},
			sections = {
				lualine_c = {
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
				},
				lualine_x = { "filename", "filetype" },
			},
		})
	end,
}
