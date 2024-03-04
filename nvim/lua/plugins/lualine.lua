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
					"filename",
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
				},
				lualine_x = {
					"encoding",
				},
			},
		})
	end,
}



				-- 	{
				-- 		function()
				-- 			local lsps = vim.lsp.get_active_clients({ bufnr = vim.fn.bufnr() })
				-- 			local icon = require("nvim-web-devicons").get_icon_by_filetype(
				-- 				vim.api.nvim_buf_get_option(0, "filetype")
				-- 			)
				-- 			if lsps and #lsps > 0 then
				-- 				local names = {}
				-- 				for _, lsp in ipairs(lsps) do
				-- 					table.insert(names, lsp.name)
				-- 				end
				-- 				return string.format("%s %s", table.concat(names, ", "), icon or "")
				-- 			else
				-- 				return icon or ""
				-- 			end
				-- 		end,
				-- 		on_click = function()
				-- 			vim.api.nvim_command("LspInfo")
				-- 		end,
				-- 		color = function()
				-- 			local _, color = require("nvim-web-devicons").get_icon_cterm_color_by_filetype(
				-- 				vim.api.nvim_buf_get_option(0, "filetype")
				-- 			)
				-- 			return { fg = color }
				-- 		end,
				-- 	},
