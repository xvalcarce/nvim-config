require("mason").setup()
require("mason-lspconfig").setup({
	-- For a quite exhaustive list check https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
	ensure_installed = { 
		"sumneko_lua",
		"julials",
		"bashls",
		"texlab",
		"pyright",
	}
})

