return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", { noremap = true, silent = true }) -- mapping to restart lsp if necessary

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local angularls_path = require("mason-registry").get_package("angular-language-server"):get_install_path()
		local cmd = {
			"ngserver",
			"--stdio",
			"--tsProbeLocations",
			table.concat({
				angularls_path,
				vim.fn.getcwd(),
			}, ","),
			"--ngProbeLocations",
			table.concat({
				angularls_path .. "/node_modules/@angular/language-server",
				vim.fn.getcwd(),
			}, ","),
		}

		lspconfig.emmet_ls.setup({})
		lspconfig.tailwindcss.setup({})
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = { -- custom settings for lua
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.angularls.setup({
			cmd = cmd,
			capabilities = capabilities,
			on_new_config = function(new_config, new_root_dir)
				new_config.cmd = cmd
			end,
		})

		local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
	end,
}
