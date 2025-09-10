return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Simple override for just YAML files
        require("nvim-web-devicons").setup({
            override = {
                yml = {
                    icon = "Y",  -- Simple gear emoji
                    color = "#cb171e",
                    name = "yaml"
                },
                yaml = {
                    icon = "Y",
                    color = "#cb171e",
                    name = "yaml"
                },
                go = {
                    icon = "",
                    -- icon = "",
                    color = "#00add8",
                    name = "go",
                },
                sh = {
                    icon = "󱆃",
                    color = "#89e051",
                    name = "shell",
                },
                bash = {
                    icon = "󱆃",
                    color = "#89e051",
                    name = "bash",
                },
                md = {
                    icon = "󰍔",  -- Document/info icon
                    color = "#4ade80",  -- Mint green color
                    name = "markdown"
                },
            },
            override_by_filename = {
                -- Specific Go module files
                ["go.mod"] = {
                    icon = "󰟓",
                    color = "#00add8",
                    name = "gomod"
                },
                ["go.sum"] = {
                    icon = "󰟓",
                    color = "#519aba",
                    name = "gosum"
                },
                ["CODEOWNERS"] = {
                    icon = "",
                    color = "#ff9500",
                    name = "codeowners"
                },
                ["README.md"] = {
                    icon = "󰋽",
                    color = "#4ade80",  -- Mint green color
                    name = "readme"
                },
                ["readme.md"] = {
                    icon = "󰋽",
                    color = "#4ade80",
                    name = "readme"
                },
                ["README"] = {
                    icon = "󰋽",
                    color = "#4ade80",
                    name = "readme"
                },
                ["readme"] = {
                    icon = "󰋽",
                    color = "#4ade80",
                    name = "readme"
                },
            },
        })

        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {})
        vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    end,
}
