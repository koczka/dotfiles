return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local colors = require("catppuccin.palettes").get_palette("latte")
		local ucolors = require("catppuccin.utils.colors")
		local telescope_prompt = ucolors.darken(colors.crust, 0.9, "#444444")
		local telescope_results = ucolors.darken(colors.mantle, 0.9, "#444444")
		local telescope_text = colors.text
		local telescope_prompt_title = colors.sky
		local telescope_preview_title = colors.teal
		local lualine_bg = colors.mantle

		require("catppuccin").setup({
			flavour = "latte",
			background = {
				light = "latte",
				dark = "latte",
			},
			transparent_background = true,
			integrations = {
				alpha = true,
				gitsigns = true,
				indent_blankline = {
					enabled = true,
					scope_color = "blue",
					colored_indent_levels = false,
				},
				mason = true,
				noice = true,
				notify = true,
				nvimtree = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				blink_cmp = true,
			},
			highlight_overrides = {
				all = {
					NoiceCmdlinePopup = { bg = telescope_results },
					NoiceMini = { bg = colors.mantle },
					WinBar = { bg = lualine_bg },
					WinBarSigActParm = { fg = colors.blue, bg = lualine_bg },
					WinBarSignature = { fg = colors.flamingo, bg = lualine_bg },
					-- dims the text so that the hits are more visible
					LeapBackdrop = { fg = colors.flamingo },
					TelescopeBorder = { bg = telescope_results, fg = telescope_results },
					TelescopePromptBorder = { bg = telescope_prompt, fg = telescope_prompt },
					TelescopePromptCounter = { fg = telescope_text },
					TelescopePromptNormal = { fg = telescope_text, bg = telescope_prompt },
					TelescopePromptPrefix = { fg = telescope_prompt_title, bg = telescope_prompt },
					TelescopePromptTitle = { fg = telescope_prompt, bg = telescope_prompt_title },
					TelescopePreviewTitle = { fg = telescope_results, bg = telescope_preview_title },
					TelescopePreviewBorder = {
						bg = ucolors.darken(telescope_results, 0.95, "#444444"),
						fg = ucolors.darken(telescope_results, 0.95, "#444444"),
					},
					TelescopePreviewNormal = {
						bg = ucolors.darken(telescope_results, 0.95, "#444444"),
						fg = "#444444",
					},
					TelescopeResultsTitle = { fg = telescope_results, bg = telescope_preview_title },
					TelescopeMatching = { fg = telescope_prompt_title },
					TelescopeNormal = { bg = telescope_results },
					TelescopeSelection = { bg = telescope_prompt },
					TelescopeSelectionCaret = { fg = telescope_text },
					TelescopeResultsNormal = { bg = telescope_results },
					TelescopeResultsBorder = { bg = telescope_results, fg = telescope_results },
					NavicIconsFile = { fg = colors.blue, bg = lualine_bg },
					LazyNormal = { bg = telescope_results },
					MasonNormal = { bg = telescope_results },
					BlinkCmpMenu = { bg = telescope_results },
					BlinkCmpDoc = { bg = telescope_results },
				},
			},
		})

		vim.o.termguicolors = true
		vim.cmd.colorscheme("catppuccin")
	end,
}
