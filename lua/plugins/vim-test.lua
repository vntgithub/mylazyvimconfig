-- return {
--   {
--     "vim-test/vim-test",
--     config = function()
--       vim.cmd([[
--         function! BufferTermStrategy(cmd)
--          exec 'te bash -c "source .env.local && ' . a:cmd . '"'
--         endfunction
--
--         let g:test#custom_strategies = {'bufferterm': function('BufferTermStrategy')}
--         let g:test#strategy = 'bufferterm'
--         ]])
--     end,
--     keys = {
--       { "<leader>Tf", "<cmd>TestFile<cr>", silent = true, desc = "Run this file" },
--       { "<leader>Tn", "<cmd>TestNearest<cr>", silent = true, desc = "Run nearest test" },
--       { "<leader>Tl", "<cmd>TestLast<cr>", silent = true, desc = "Run last test" },
--       { "<leader>Ta", "<cmd>TestSuite<cr>", silent = true, desc = "Run all test" },
--     },
--   },
return {
  "vim-test/vim-test",
  keys = {
    { "<leader>tn", "<cmd>TestNearest<cr>", desc = "Run nearest test" },
    { "<leader>tf", "<cmd>TestFile<cr>", desc = "Run test file" },
    { "<leader>ts", "<cmd>TestSuite<cr>", desc = "Run test suite" },
    { "<leader>tl", "<cmd>TestLast<cr>", desc = "Run last test" },
    { "<leader>tv", "<cmd>TestVisit<cr>", desc = "Visit test file" },
  },
  config = function()
    -- Custom strategy with .env.local sourced
    vim.cmd([[
      function! SourceEnvLocalStrategy(cmd)
        " Wrap everything inside a single bash -c string
        botright split | execute 'terminal bash -c ''source .env.local && ' . a:cmd . ''''
      endfunction

      let g:test#custom_strategies = {'source_env': function('SourceEnvLocalStrategy')}
      let g:test#strategy = 'source_env'
    ]])

    -- Auto open quickfix after test
    -- vim.cmd([[
    --   augroup TestQuickfix
    --     autocmd!
    --     autocmd User VimTestPre  cclose
    --     autocmd User VimTestPost copen
    --   augroup END
    -- ]])

    -- Quickfix navigation
    -- vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Next test error" })
    -- vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Prev test error" })
  end,
}
