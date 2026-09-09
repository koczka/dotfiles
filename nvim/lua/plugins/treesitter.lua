return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  dependencies = {
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "dlvandenberg/tree-sitter-angular",
    "nvim-treesitter/nvim-treesitter-context"
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    local treesitter_context = require('treesitter-context')
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

    vim.filetype.add({
      pattern = {
        [".*%.component%.html"] = "htmlangular", -- Sets the filetype to `htmlangular` if it matches the pattern
      },
    })

    treesitter_context.setup {
      enable = true,            -- Enable this plugin (Can be enabled/disabled later via commands)
      multiwindow = false,      -- Enable multiwindow support.
      max_lines = 3,            -- How many lines the window should span. Values <= 0 mean no limit.
      min_window_height = 0,    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
      line_numbers = true,
      multiline_threshold = 20, -- Maximum number of lines to show for a single context
      trim_scope = 'outer',     -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
      mode = 'cursor',          -- Line used to calculate context. Choices: 'cursor', 'topline'
      zindex = 20,              -- The Z-index of the context window
      on_attach = nil,          -- (fun(buf: integer): boolean) return false to disable attaching
    }

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      auto_install = true,
      ensure_installed = {
        "angular",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "gitignore",
      },
    })
  end,
}
