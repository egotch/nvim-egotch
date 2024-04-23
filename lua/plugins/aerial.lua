return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("aerial").setup({

      -- A list of all symbols to display. Set to false to display all symbols.
      -- This can be a filetype map (see :help aerial-filetype-map)
      -- To see all available values, see :help SymbolKind
      --filter_kind = {
       -- "Class",
       --"Constructor",
       -- "Enum",
       -- "Function",
       -- "Interface",
       -- "Module",
       -- "Method",
       -- "Struct",
      --},
      filter_kind = false

    })

    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>")
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>")
    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
  end,
}
