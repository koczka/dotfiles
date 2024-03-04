return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, { silent = true })

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.tsserver,
				null_ls.builtins.diagnostics.stylelint.with({
					condition = function(utils)
						return utils.root_has_file({ ".stylelintrc.json", ".stylelintrc.js" }) -- only enable if root has .eslintrc.js or .eslintrc.cjs
					end,
				}),
				-- null_ls.builtins.diagnostics.eslint_d.with({
				-- 	condition = function(utils)
				-- 		return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" }) -- only enable if root has .eslintrc.js or .eslintrc.cjs
				-- 	end,
				-- }),
				-- null_ls.builtins.code_actions.eslint_d.with({
				-- 	condition = function(utils)
				-- 		return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" }) -- only enable if root has .eslintrc.js or .eslintrc.cjs
				-- 	end,
				-- }),
			},
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
