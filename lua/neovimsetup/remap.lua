vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Moving a block of text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>p", "\"+p") -- system clipboard woooo!
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>") -- Escaping from terminal mode

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false }) -- Code Runner

-- vim.keymap.set("n", "<leader>psc", ":PackerSync<CR>") -- quick input for packer syncing

vim.keymap.set("n", "<leader>upd", function () -- ALL the updates
	vim.cmd.PackerSync()
	vim.cmd.MasonUpdate()
	vim.cmd.TSUpdate()
end)
