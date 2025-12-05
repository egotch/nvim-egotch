return {
    {
        "github/copilot.vim"
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        opts = {
            show_help = true,
            auto_follow_cursor = false,
            -- window = {
                -- layout = 'right',
            -- },
            keymaps = {
                reset = "<leader>cr", -- remap to <leader>cr
                -- or set to false to disable: reset = false,
            },
        },
        config = function(_, opts)
            require("CopilotChat").setup(opts)

            -- Add your preferred mapping for reset
            vim.keymap.set("n", '<c-a>', ':CopilotChatToggle<CR>')
        end,
    },
}

