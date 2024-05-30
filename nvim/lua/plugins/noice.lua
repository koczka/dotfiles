return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			views = {
				mini = {
					win_options = {
						winblend = 0,
					},
				},
				cmdline_popup = {
					position = {
						row = 6,
						col = "50%",
					},
					border = {
						style = "none",
						padding = { 1, 1 },
					},
					size = {
						min_width = 60,
						width = "auto",
						height = "auto",
					},
				},
			},
			messages = {
				enabled = true, -- enables the Noice messages UI
			},
			presets = {
				bottom_search = false, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
		})

		require("notify").setup({
			fps = 120,
			level = 3,
			top_down = true,
			timeout = 1000,
			background_colour = "#e69875",
			render = "default",
			minimum_width = 50,
		})
	end,
}
