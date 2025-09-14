-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- if vim.o.background == "light" or vim.o.background == "dark" then
--   -- do nothing, already set
-- else
--   -- detect from terminal (some terminals export vars)
--   local bg = os.getenv("BACKGROUND") or ""
--   if bg:match("dark") then
--     vim.o.background = "dark"
--   else
--     vim.o.background = "light"
--   end
-- end

vim.opt.termguicolors = true
-- Use terminal palette indexes (0–15) instead of hex colors
vim.api.nvim_set_hl(0, "Normal", { ctermfg = 7, ctermbg = 0 })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 8, italic = true })
vim.api.nvim_set_hl(0, "String", { ctermfg = 2 })
vim.api.nvim_set_hl(0, "Function", { ctermfg = 4, bold = true })
vim.api.nvim_set_hl(0, "Error", { ctermfg = 1, bold = true })
