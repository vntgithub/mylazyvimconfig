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
