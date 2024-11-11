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

		-- Enable nvim cmp capabilities on servers
		local servers = { "emmet_ls", "tailwindcss", "jsonls", "cssls", "html", "lua_ls", "ts_ls", "lemminx" }
		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
			})
		end

		-- Angular server config
		lspconfig.angularls.setup({
			cmd = cmd,
			filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
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
