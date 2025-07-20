-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Utility function to open ToggleTerm and run comman

-- Buffers management keymaps
vim.keymap.set("n", "<c-l>", "<cmd>bn<cr>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<c-h>", "<cmd>bp<cr>", { silent = true, desc = "Previous buffer" })

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- Git keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
