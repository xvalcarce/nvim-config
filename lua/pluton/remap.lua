---------------------------------------------------------------
-- => General
---------------------------------------------------------------

-- Our dear leader
vim.g.mapleader = ","

-- Remap function 
local map = vim.keymap.set

-- Fast saving
map("n","<leader>w",":w!<cr>")

-- Fast quitting
map("n","<leader>q",":q!<cr>")
map("n","<leader>Q",":qa<cr>")


----------------------------------------------------------------
-- => Moving around w/ shortcuts
----------------------------------------------------------------
-- Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map("n","<space>","/")
map("n","<c-space>","?")

---- Allow Esc key to return to normal mode while in Terminal buffer
map("t","<ESC>","<C-\\><C-n>")

--" Disable highlight when <leader><cr> is pressed
--map <silent> <leader><cr> :noh<cr>

-- Smart way to move between windows
map("n","<C-j>","<C-W>j")
map("n","<C-k>","<C-W>k")
map("n","<C-h>","<C-W>h")
map("n","<C-l>","<C-W>l")

--" Ez resize of window
--map <C-+> :vertical resize +5
--map <C--> :vertical resize -5
--map <S-+> :resize +5
--map <S--> :resize -5

--"" Close the current buffer
--map <leader>bd :Bclose<cr>:tabclose<cr>gT

--"" Close all the buffers
--map <leader>ba :bufdo bd<cr>

-- Buffer navigation
map("n","<leader>l",":bnext<cr>")
map("n","<leader>h",":bprevious<cr>")

-- Useful mappings for managing tabs
map("n","<leader>tn",":tabnew<cr>")
map("n","<leader>to",":tabonly<cr>")
map("n","<leader>tc",":tabclose<cr>")
map("n","<leader>tm",":tabmove")


----------------------------------------------------------------
-- => Useful func leader-binded
----------------------------------------------------------------

-- Terminal (vertical/horizontal split)
map("n","<leader>tv",":vsplit term://zsh<cr>")
map("n","<leader>th",":split term://zsh<cr>")

-- Clipboard
map("v","<leader>y","\"+y")
map("n","<leader>Y","\"+yg_")
map("n","<leader>y","\"+y")
map("n","<leader>p","\"+p")
map("n","<leader>P","\"+P")
map("v","<leader>p","\"+p")
map("v","<leader>P","\"+P")


----------------------------------------------------------------
-- => Editing mappings
----------------------------------------------------------------

-- Move a line of text using ALT+[jk] or Command+[jk] if on Apple
map("n","<M-j>","mz:m+<cr>`z")
map("n","<M-k>","mz:m-2<cr>`z")
map("v","<M-j>",":m'>+<cr>`<my`>mzgv`yo`z")
map("v","<M-k>",":m'<-2<cr>`>my`<mzgv`yo`z")


--------------------------------------------------------------
-- => Spell check
---------------------------------------------------------------
-- Pressing ,ss will toggle and untoggle spell checking
map("n","<leader>ss",":setlocal spell!<cr>")

-- Shortcuts for spelling checks 
map("n","<leader>sn","]s") -- next word
map("n","<leader>sp","[s") -- previous word
map("n","<leader>sa","zg") -- add word to dict
map("n","<leader>s=","z=") -- suggestion
