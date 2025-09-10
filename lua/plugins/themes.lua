return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- transparent_background = true, -- Enable transparency
      integrations = {
        aerial = true,
        alpha = true,
        gitsigns = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        neotest = true,
        neotree = true,  -- This enables Catppuccin theming for neo-tree icons
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    }
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  },
  {
    'barrientosvctor/abyss.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      -- Remove the integrations from abyss.nvim as it doesn't use them
      -- Abyss is a simple theme without integration configs
    }
  },
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },
  { 
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000
  },
  { 
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000
  },
}
