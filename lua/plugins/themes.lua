return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        --cmp = true,
        --dashboard = true,
        --flash = true,
        gitsigns = true,
        --headlines = true,
        --illuminate = true,
        --indent_blankline = { enabled = true },
        --leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        --mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        --navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },

    }   --config = function()
    --
    -- vim.cmd.colorscheme "catppuccin-mocha"
    --end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
    }
  },
  {
    'barrientosvctor/abyss.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        --cmp = true,
        --dashboard = true,
        --flash = true,
        gitsigns = true,
        --headlines = true,
        --illuminate = true,
        --indent_blankline = { enabled = true },
        --leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        --mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        --navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
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
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    opts = {
    }
  },
  { "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000
  },
  { "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000
  },

  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}
