require("telescope").setup {
  extensions = {
    repo = {
      list = {
        fd_opts = {
          "--no-ignore-vcs",
        },
        search_dirs = {
          "~/Git",
        },
      },
	  cached_list = {
		file_ignore_patterns = {
			"/%.cache/", "/%.config/", "/%.vscode/", "/%.local/"
		},
	  },
    },
  },
}

require("telescope").load_extension "repo"
require("telescope").load_extension "file_browser"
require("telescope").load_extension "project"

-- keymap Telescope
local builtin = require('telescope.builtin')
local extens = require('telescope').extensions
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', extens.repo.cached_list, {})
vim.keymap.set('n', '<leader>ft', ":Telescope file_browser<CR>", { noremap = true })
vim.keymap.set('n', '<leader>fp', extens.project.project, {})
