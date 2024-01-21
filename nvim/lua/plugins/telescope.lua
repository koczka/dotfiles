return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = "tsakirist/telescope-lazy.nvim",
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
      vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
      vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
      vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)  -- list open buffers in current neovim instance
      vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags
      vim.keymap.set("n", "<leader>fn", "<cmd>Telescope notify<cr>", opts)   -- list available help tags
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      require("telescope").load_extension("ui-select")
    end,
  },
}
