-- import comment plugin safely
local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
	return
end

catppuccin.setup({
	-- flavour = "latte",
	flavour = "frappe",
	-- flavour = "macchiato",
	-- flavour = "mocha",
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		mason = true,
		lsp_saga = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
	},
})
