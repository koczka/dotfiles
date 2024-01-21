return {
	"jose-elias-alvarez/typescript.nvim",
	config = function()
		require("typescript").setup({
			server = {
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>", { buffer = bufnr })
					vim.keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>", { buffer = bufnr })
					vim.keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>", { buffer = bufnr })
				end,
			},
		})
	end,
}
