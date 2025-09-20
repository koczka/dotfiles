return {
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons",   opts = {} },
  { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
  {
    "numToStr/Comment.nvim",           -- toggle comments (gc + motion)
    opts = {
      padding = true,                  -- add any options here
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
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup {}

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
          require("lsp-format").on_attach(client, args.buf)
        end,
      })
    end
  }

}
