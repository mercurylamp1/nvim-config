return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
	},
	config = function()
		local lspconfig = require'lspconfig'
		local mason = require'mason'

		mason.setup()
		lspconfig.clangd.setup{}
		lspconfig.lua_ls.setup{}
		lspconfig.luau_lsp.setup{}
	end,
}
