return {
  "xiyaowong/transparent.nvim",
  dependencies = { "catppuccin/nvim", "folke/tokyonight.nvim" },
  config = function()
    require("transparent").setup({
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
      },
      extra_groups = {
        -- Neo-tree
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",
        "NeoTreeWinSeparator",
        "NeoTreeVertSplit",
        
        -- Telescope
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "TelescopeResultsNormal",
        "TelescopeResultsBorder",
        "TelescopePreviewNormal",
        "TelescopePreviewBorder",
        
        -- Other floats
        "WhichKeyFloat",
        "WhichKeyBorder",
        "FloatBorder",
        "NormalFloat",
        "VertSplit",
        "WinSeparator",
      },
      exclude_groups = { -- Keep lualine visible
        "lualine_a_normal",
        "lualine_b_normal", 
        "lualine_c_normal",
        "lualine_x_normal",
        "lualine_y_normal",
        "lualine_z_normal",
        "StatusLine",
        "StatusLineNC",
      },
    })
    
    vim.keymap.set("n", "<leader>tt", ":TransparentToggle<CR>", { desc = "Toggle transparency" })
  end,
}
