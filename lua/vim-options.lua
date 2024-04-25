vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Folding
vim.keymap.set('n', "-", "<cmd>foldclose<CR>", { desc = "Close code fold" })
vim.keymap.set('n', "+", "<cmd>foldopen<CR>", { desc = "Open code fold" })
vim.keymap.set('n', "<leader>zt", "<cmd>set foldmethod=indent<CR>", { desc = "fold by indent" })


-- Tab switching easier
vim.keymap.set('n', '<leader>t', 'gt')
vim.keymap.set('n', '<leader>1', '1gt')
vim.keymap.set('n', '<leader>2', '2gt')
vim.keymap.set('n', '<leader>3', '3gt')
vim.keymap.set('n', '<leader>4', '4gt')
vim.keymap.set('n', '<leader>5', '5gt')
vim.keymap.set('n', '<leader>6', '6gt')
vim.keymap.set('n', '<leader>7', '7gt')
vim.keymap.set('n', '<leader>8', '8gt')
vim.keymap.set('n', '<leader>9', '9gt')

-- diagnostics switching
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	}
end, { desc = "toggle diagnostic" })

--vim.keymap.set('n', '<leader>i', ":lua vim.diagnostic.open_float(nil, {focus=true, scope='cursor'})<CR>", default_opts)
vim.keymap.set('n', '<leader>i', ":lua vim.diagnostic.open_float()<CR>", default_opts)
