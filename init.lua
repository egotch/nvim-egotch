local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
--vim.cmd.colorscheme "catppuccin-mocha"
--vim.cmd.colorscheme "tokyonight-night"
-- vim.cmd.colorscheme "abyss-boreal"
vim.cmd.colorscheme "nightfox"

vim.treesitter.language.register("dockerfile", "Dockerfile")
