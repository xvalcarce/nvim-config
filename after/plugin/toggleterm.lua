require("toggleterm").setup{
	size = function(term)
    	if term.direction == "horizontal" then
      		return 15
    	elseif term.direction == "vertical" then
      		return vim.o.columns * 0.4
    	end
	end,
	open_mapping = [[<leader>tt]],
}


vim.api.nvim_set_keymap("n", "<leader>th", '<cmd>exe v:count1 . "ToggleTerm"<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tv", '<cmd>exe v:count1 . "ToggleTerm direction=vertical"<CR>', {noremap = true, silent = true})

-- local Terminal  = require('toggleterm.terminal').Terminal
-- local term = Terminal:new({ direction = "vertical"})
-- local termh = Terminal:new({ direction = "horizontal"})
-- local julia = Terminal:new({ cmd = "julia -t 8", direction = "vertical"})
-- local python = Terminal:new({ cmd = "ipython", direction = "vertical"})
-- 
-- function _term_toggle() term:toggle() end
-- function _termh_toggle() termh:toggle() end
-- function _julia_toggle() julia:toggle() end
-- function _python_toggle() python:toggle() end
-- 
-- vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua _term_toggle()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>lua _termh_toggle()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<leader>tj", "<cmd>lua _julia_toggle()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua _python_toggle()<CR>", {noremap = true, silent = true})
