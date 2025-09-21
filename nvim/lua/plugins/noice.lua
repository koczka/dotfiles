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
        enabled = true,
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
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
