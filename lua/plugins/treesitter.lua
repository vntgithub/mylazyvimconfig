-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     config = function()
--       require("nvim-treesitter").setup({
--         ensure_installed = { "lua", "vim", "go", "ruby", "elixir", "heex" },
--         highlight = { enable = true },
--       })
--     end,
--   },
-- }

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "go", "lua", "vim", "vimdoc", "markdown" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    -- REMOVE the 's' from 'configs' here:
    require("nvim-treesitter.config").setup(opts)
  end,
}
