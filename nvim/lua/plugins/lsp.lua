return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    opts = {
      servers = {
        bashls = {},
        css_variables = {},
        cssls = {},
        emmet_ls = {},
        html = {},
        jsonls = {},
        lua_ls = {},
        vtsls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")

      for server, config in pairs(opts.servers) do
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end

      vim.diagnostic.config({
        virtual_text = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "󰌵",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "t1gu1/nvim-vtsls",
    event = "VeryLazy",
    lazy = true,
    config = function()
      require("vtsls").config({ silent = true })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          -- Conform will run the first available formatter
          javascript = { "prettierd", "prettier", stop_after_first = true },
          typescript = { "prettierd", "prettier", stop_after_first = true },
          html = { "prettierd", "prettier", stop_after_first = true },
          htmlangular = { "prettierd", "prettier", stop_after_first = true },
          scss = { "prettierd", "prettier", stop_after_first = true },
          css = { "prettierd", "prettier", stop_after_first = true },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_format = "fallback",
        },
      })
    end,
  },
}
