
vim.g.mapleader = " "
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Phoenix/Elixir: .heex template files
vim.filetype.add({ extension = { heex = "heex" } })
vim.filetype.add({
  extension = {
    gowork = "gowork",
    gotmpl = "gotmpl",
    eelixir = "eelixir",
    surface = "surface",
  },
})

-- Alias vim.opt to 'opt' for cleaner code below
local opt = vim.opt

-- ==============================================================================
-- Editor Behavior
-- ==============================================================================
opt.autowrite = true               -- Automatically save before executing commands
opt.clipboard = "unnamedplus"      -- Sync Neovim clipboard with system clipboard
opt.completeopt = "menu,menuone,noselect" -- Better autocompletion menu UI
opt.conceallevel = 2               -- Hide markdown formatting markers (like *bold*)
opt.confirm = true                 -- Prompt to save instead of throwing an error when exiting
opt.formatoptions = "jcroqlnt"     -- Better default comment formatting
opt.ignorecase = true              -- Ignore casing in searches...
opt.smartcase = true               -- ...unless you use a capital letter
opt.inccommand = "nosplit"         -- Live preview of search/replace (e.g., %s/old/new)
opt.mouse = "a"                    -- Enable full mouse support
opt.timeoutlen = 300               -- Wait time (ms) for mapped key sequences (makes WhichKey faster)
opt.undofile = true                -- Save undo history to a file (undo after reopening!)
opt.updatetime = 200               -- Faster hover events and swap file saving
opt.virtualedit = "block"          -- Allow cursor to move past end of line in visual block mode
opt.swapfile = false

-- ==============================================================================
-- UI & Visuals
-- ==============================================================================
opt.cursorline = true              -- Highlight the line your cursor is currently on
opt.laststatus = 3                 -- Use a single, global statusline at the bottom
opt.linebreak = true               -- Wrap long lines at words, not in the middle of a word
opt.list = true                    -- Show invisible characters
opt.number = true                  -- Show absolute line numbers
opt.relativenumber = true          -- Show relative line numbers for easier jumping
opt.scrolloff = 4                  -- Keep 4 lines visible above/below cursor when scrolling
opt.sidescrolloff = 8              -- Keep 8 columns visible left/right when scrolling
opt.showmode = false               -- Hide "-- INSERT --" text (statusline usually handles this)
opt.signcolumn = "yes"             -- Always show the left gutter (prevents text shifting)
opt.splitbelow = true              -- Open horizontal splits below the current window
opt.splitright = true              -- Open vertical splits to the right of the current window
opt.termguicolors = true           -- Enable 24-bit true colors
opt.wrap = false                   -- Disable line wrapping by default

-- ==============================================================================
-- Indentation & Tabs
-- ==============================================================================
opt.expandtab = true               -- Convert tabs to spaces
opt.shiftround = true              -- Round indentation to the nearest multiple of shiftwidth
opt.shiftwidth = 2                 -- Number of spaces to use for each step of (auto)indent
opt.tabstop = 2                    -- Number of spaces a <Tab> counts for
opt.smartindent = true             -- Automatically insert the correct indentation on new lines


-- -- Lua
-- vim.opt.termguicolors = true
--
-- -- If you want Neovim to respect your 0.7 opacity from Kitty:
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
-- local function highlight_transparent()
--     -- Base Neovim Transparency
--     local highlights = {
--         "Normal", "NormalFloat", "NormalNC", "SignColumn", 
--         "WinSeparator", "StatusLine", "StatusLineNC",
--         "TelescopeNormal", "TelescopeBorder", "TelescopePromptBorder",
--         "OilNormal", "OilBorder"
--     }
--
--     for _, group in ipairs(highlights) do
--         vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
--     end
-- end
--
-- -- Run it immediately
-- highlight_transparent()
--
-- -- Ensure it stays transparent even if you change colorschemes
-- vim.api.nvim_create_autocmd("ColorScheme", {
--     callback = highlight_transparent,
-- })
--
-- -- Match Telescope selection to your Matugen selection_background (#bfc6dc)
-- vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#293041", fg = "#bfc6dc" })
--
--
