return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local git_blame = require("gitblame")
		local lualine = require("lualine")

		lualine.setup({
			options = {
				-- theme = "catppuccin",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 1 } },
				lualine_c = {
					"filename",
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
				},
				lualine_x = {
					"encoding",
				},
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 1 },
				},
			},
		})
	end,
}
