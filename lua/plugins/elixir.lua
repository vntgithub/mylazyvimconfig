-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         elixirls = {
--           settings = {
--             elixirLS = {
--               dialyzerEnabled = false, -- 🚀 turn this off for speed
--               fetchDeps = false, -- don’t auto-fetch deps
--             },
--           },
--         },
--       },
--     },
--   },
-- }

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = false,
        lexical = {
          cmd = { "lexical", "server" },
          filetypes = { "elixir", "eelixir", "heex" },
          root_dir = require("lspconfig.util").root_pattern("mix.exs", ".git"),
        },
      },
    },
  },
}
