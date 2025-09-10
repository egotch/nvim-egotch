return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
--    local dashboard = require("alpha.themes.startify")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {

                [[                                                                                   ]],
                [[  ██████╗ ██████╗     ██████╗  █████╗ ████████╗ █████╗  ██████╗ ██████╗ ███████╗   ]],
                [[ ██╔═══██╗╚════██╗    ██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔═══██╗██╔══██╗██╔════╝   ]],
                [[ ██║   ██║ █████╔╝    ██║  ██║███████║   ██║   ███████║██║   ██║██████╔╝███████╗   ]],
                [[ ██║▄▄ ██║██╔═══╝     ██║  ██║██╔══██║   ██║   ██╔══██║██║   ██║██╔═══╝ ╚════██║   ]],
                [[ ╚██████╔╝███████╗    ██████╔╝██║  ██║   ██║   ██║  ██║╚██████╔╝██║     ███████║   ]],
                [[  ╚══▀▀═╝ ╚══════╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚══════╝   ]],
                [[                                                                                   ]],
                [[                        ┌─────────────────────────────────┐                        ]],
                [[                        │    Data Engineering Excellence  │                        ]],
                [[                        │    󰱧  all data all the time 󰱧   │                        ]],
                [[                        └─────────────────────────────────┘                        ]],
                [[                                                                                   ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button( "ctrl + n", "󰙅  > File Explorer" , "<C-n>"),
      dashboard.button( "spc +  a", "󰨁  > Aerial" , "<leader>a"),
      dashboard.button( "spc + ff", "󰡯  > Find File", "<leader>ff"),
      dashboard.button( "spc + fg", "󱝩  > Live Grep"   , "<leader>fg"),
      dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end,
}
