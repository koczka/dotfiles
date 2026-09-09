return {
  { "nvim-tree/nvim-web-devicons" },
  { "christoomey/vim-tmux-navigator" },
  -- {
  --   'ibhagwan/smartyank.nvim',
  --   opts = {
  --     highlight = {
  --       enabled = true,        -- highlight yanked text
  --       higroup = "IncSearch", -- highlight group of yanked text
  --       timeout = 300,         -- timeout for clearing the highlight
  --     },
  --   }
  -- },
  {
    "numToStr/Comment.nvim",
    opts = {
      padding = true,
      toggler = {
        line = "gcc",
      },
    },
    lazy = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      whitespace = {
        remove_blankline_trail = false,
      },
      scope = {
        enabled = true,
      },
    },
  },
  {
    "szw/vim-maximizer",                                        -- maximizes and restores current window
    config = function()
      vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
    end,
  },
}
