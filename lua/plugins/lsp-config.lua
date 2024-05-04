return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "gopls", "pyright", "pylsp" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      opts = {
        diagnostics = {
          underline = true,
          --update_in_insert = false
          virtual_text = {
            spacing = 4,
            source = "if_many",
            prefix = "●",
          },
        },
      },
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({

        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
--      lspconfig.pylsp.setup({
--        settings = {
--          pylsp = {
--            plugins = {
--              pycodestyle = {
--                maxLineLength = 200,
--
--              }
--            }
--          }
--        }
--      })

      vim.keymap.set("n", "<c-q>", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<c-w>", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
