return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    severity = vim.diagnostic.severity.ERROR
  },
  config = function()
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle("diagnostics") end)
    vim.keymap.set("n", "<leader>xs", function() require("trouble").toggle("symbols") end)
    vim.keymap.set("n", "<leader>xt", function() require("trouble").toggle("todo") end)
  end,
}
