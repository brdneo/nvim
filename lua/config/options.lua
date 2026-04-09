vim.opt.wrap = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tab width to 4 spaces
vim.opt.tabstop = 4

-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Ensure indentation when editing existing files follows the same
vim.opt.softtabstop = 4

-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"
vim.o.scrolloff = 10

-- Disable format on save globally
vim.g.autoformat = false

-- make the bg color black
-- vim.o.background = "dark"
-- vim.cmd("highlight Normal guibg=black")

-- Persistent Undo com Autocreation (Mentalidade de Engenheiro)
local undo_path = vim.fn.expand("~/.local/share/nvim/undo")

if vim.fn.isdirectory(undo_path) == 0 then
    vim.fn.mkdir(undo_path, "p")
end

vim.opt.undofile = true
vim.opt.undodir = undo_path
vim.opt.undolevels = 500
vim.opt.undoreload = 5000

--autoread files
vim.opt.autoread = true

-- Enable highlighting for the word under the cursor
vim.opt.cursorline = true -- Highlight the current line

-- Enable automatic spell checking
vim.opt.spell = true
