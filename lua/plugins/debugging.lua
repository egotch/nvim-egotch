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

    dap.configurations.python = {
        {
            type = 'python',
            request = 'launch',
            name = "Launch file",
            program = "${file}",
            justMyCode = false,
            console = 'integratedTerminal',
            },
        {
            type = 'python',
            request = 'launch',
            name = "Launch with arguments",
            program = "${file}",
            args = function ()
                local args_string = vim.fn.input('Arguments: ')
                return vim.split(args_string, " ")
            end,
            justMyCode = false,
            console = "integratedTerminal",
            },
        {
            type = 'python',
            request = 'launch',
            name = "Launch module",
            module = function ()
                return vim.fn.input('Module name: ')
            end,
            justMyCode = false,
            console = "integratedTerminal",
            },
        }

    vim.keymap.set("n", "<Leader>b", ":DapToggleBreakpoint<CR>")
    vim.keymap.set("n", "<F5>", ":DapContinue<CR>")
    vim.keymap.set("n", "<F8>", ":DapStepOver<CR>")
    vim.keymap.set("n", "<F7>", ":DapStepInto<CR>")
    vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
    vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
    vim.fn.sign_define('DapStopped',{ text ='', texthl ='', linehl ='', numhl =''})
  end,
}
