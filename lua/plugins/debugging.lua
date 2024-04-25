return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "leoluz/nvim-dap-go",
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    require("dapui").setup()
    require("dap-go").setup()
    require('dap.ext.vscode').load_launchjs(nil, {})

    local debugpy = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    require("dap-python").setup(debugpy)

    local dap, dapui = require("dap"), require("dapui")
    --this is a new line
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>b", ":DapToggleBreakpoint<CR>")
    vim.keymap.set("n", "<F5>", ":DapContinue<CR>")
    vim.keymap.set("n", "<F8>", ":DapStepOver<CR>")
    vim.keymap.set("n", "<F7>", ":DapStepInto<CR>")
    vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
    vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
    vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
  end,
}
