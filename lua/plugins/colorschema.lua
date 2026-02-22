-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme "catppuccin-mocha"
--   end
-- }

return {
  "folke/tokyonight.nvim",
  lazy = false,    -- Load this immediately
  priority = 1000, -- Load this before everything else
  config = function()
    vim.cmd([[colorscheme tokyonight-night]])
  end,
}
