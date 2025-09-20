return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      enabled = true,
      focus = 'list',
      ui_select = true,
      layouts = {
        select = {
          layout = {
            relative = 'cursor',
          },
        },
      },
    }
  }
}
