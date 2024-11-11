return {
	"nvimdev/lspsaga.nvim", -- enhanced lsp uis
	config = function()
		require("lspsaga").setup({
			move_in_saga = { prev = "<C-k>", next = "<C-j>" },
			finder_action_keys = {
				open = "<CR>",
			},
			definition_action_keys = {
				edit = "<CR>",
			},
			ui = {
				kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
			},
		})

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
		vim.keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts)
		vim.keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>", opts)
		vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
		vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
		vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
		vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	end,
}
