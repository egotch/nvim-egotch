return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            -- Default file explorer to replace netrw
            default_file_explorer = true,
            -- Columns to display
            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
            },
            -- Buffer-local options to use for oil buffers
            buf_options = {
                buflisted = false,
                bufhidden = "hide",
            },
            -- Window-local options to use for oil buffers
            win_options = {
                wrap = false,
                signcolumn = "no",
                cursorcolumn = false,
                foldcolumn = "0",
                spell = false,
                list = false,
                conceallevel = 3,
                concealcursor = "nvic",
            },
            -- Restore window options to previous values when leaving an oil buffer
            restore_win_options = true,
            -- Skip the confirmation popup for simple operations
            skip_confirm_for_simple_edits = false,
            -- Keymaps in oil buffer
            keymaps = {
                ["g?"] = "actions.show_help",
                ["<CR>"] = "actions.select",
                ["<C-s>"] = "actions.select_vsplit",
                ["<C-t>"] = "actions.select_tab",
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = "actions.close",
                ["<C-r>"] = "actions.refresh",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["`"] = "actions.cd",
                ["~"] = "actions.tcd",
                ["gs"] = "actions.change_sort",
                ["gx"] = "actions.open_external",
                ["H"] = "actions.toggle_hidden",
                ["g\\"] = "actions.toggle_trash",

                -- Disable ctrl+h,j,k,l so they can be used for split navigation
                ["<C-h>"] = false,
                ["<C-j>"] = false,
                ["<C-k>"] = false,
                ["<C-l>"] = false,
            },
            -- Set to false to disable all of the above keymaps
            use_default_keymaps = true,
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = false,
                -- This function defines what is considered a "hidden" file
                is_hidden_file = function(name, bufnr)
                    return vim.startswith(name, ".")
                end,
                -- This function defines what will never be shown, even when `show_hidden` is set
                is_always_hidden = function(name, bufnr)
                    return false
                end,
                sort = {
                    -- sort order can be "asc" or "desc"
                    { "type", "asc" },
                    { "name", "asc" },
                },
            },
        })

        -- Keymap to toggle oil with Ctrl+n (mimicking neo-tree)
        vim.keymap.set("n", "<C-n>", function()
            local oil = require("oil")
            -- Check if current buffer is an oil buffer
            if vim.bo.filetype == "oil" then
                oil.close()
            else
                oil.open()
            end
        end, { desc = "Toggle Oil file explorer" })
    end,
}
