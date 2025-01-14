return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "abyss-boreal",

      },
      sections = {
        lualine_a = {'mode', {'filename', path=0}},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{'filename', path=3}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end,

}
