return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "tsakirist/telescope-lazy.nvim" },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            "png",
            "jpg",
          },
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              preview_width = 0.65,
              results_width = 0.35,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          path_display = { "truncate" },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        },
      })

      telescope.load_extension("noice")
      telescope.load_extension("fzf")
    end,
  },
}
