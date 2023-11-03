-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.gruvbox")

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = "catppuccin",
	},
})
