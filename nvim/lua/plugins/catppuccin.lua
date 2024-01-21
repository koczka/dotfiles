return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      background = {
        light = "macchiato",
        dark = "macchiato",
      },
      transparent_background = true,
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          scope_color = "lavender",
          colored_indent_levels = false,
        },
        lsp_saga = true,
        mason = true,
        noice = true,
        notify = true,
        nvimtree = true,
        telescope = {
          enabled = true,
        },
        treesitter = true,
      },
    })

    vim.o.termguicolors = true
    vim.cmd.colorscheme("catppuccin")
  end,
}
