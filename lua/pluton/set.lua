---------------------------------------------------------------
-- => (Neo)VIM UI
---------------------------------------------------------------

-- No netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set number as relative to cursor
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set 7 lines to the cursor - when moving vertically using j/k
vim.opt.scrolloff = 7

-- Who doesn't want incremental search?
vim.opt.incsearch = true

-- Don't redraw while executing macros (good performance config)
vim.opt.lazyredraw = true

-- Show matching brackets when text indicator is over them
vim.opt.showmatch = true

-- How many tenths of a second to blink when matching brackets
vim.opt.matchtime = 2

-- No annoying sound on errors
vim.opt.errorbells = false
vim.opt.visualbell = false

------------------------------------------------------------------
-- => Text, tab and indent related
------------------------------------------------------------------

-- Use spaces instead of tabs
vim.opt.expandtab = false

-- Be smart when using tabs ;)
vim.opt.smarttab = true

-- 1 tab == 4 spaces (use tab, pls!)
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Linebreak on 500 characters 
vim.opt.lbr = true
vim.opt.tw = 500
vim.opt.wrap = true

-- Smart indentition
vim.opt.smartindent = true

-- Fieltype dependent
vim.api.nvim_command("filetype plugin indent on")


----------------------------------------------------------------
-- => Window / Buffer
----------------------------------------------------------------

-- Better buffer gestion
vim.opt.splitbelow = true
vim.opt.splitright = true


----------------------------------------------------------------
-- => Files, backups and undo
----------------------------------------------------------------

-- Turn backup off, since most stuff is in SVN, git et.c anyway... but undo YAS
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

----------------------------------------------------------------
-- => Provider
----------------------------------------------------------------

vim.g.loaded_python3_provider = 0
