return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = {
      char = "│", -- This is the vertical line you want
      tab_char = "│",
    },
    scope = {
      enabled = true, -- This highlights the specific 'if' block you are inside
      show_start = false,
      show_end = false,
      char = "▎",
    },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
      },
    },
  },
}
