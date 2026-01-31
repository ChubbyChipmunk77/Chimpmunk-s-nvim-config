-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>to", ":colorscheme oxocarbon<cr>", { desc = "switch to oxocarbon" })
vim.keymap.set("n", "<leader>tg", ":colorscheme gruvbox<cr>", { desc = "switch to gruvbox" })
vim.keymap.set("n", "<leader>ttd", ":colorscheme tokyodark<cr>", { desc = "switch to tokyonight dark" })
