return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "vim", "go", "ruby", "elixir", "heex" },
        highlight = { enable = true },
      })
    end,
  },
}
