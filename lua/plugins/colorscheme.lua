return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      overrides = {
        Normal = { bg = "#1C2021" },
        NormalNC = { bg = "#1C2021" },
        NormalFloat = { bg = "#1C2021" },
        FloatBorder = { bg = "#1C2021" },
        VertSplit = { bg = "#1C2021" },
        SignColumn = { bg = "#1C2021" },
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      background = "1C2021",
    },
  },
}
