return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require'lspconfig'.clangd.setup({
				cmd = { 
					"clangd",
					"--header-insertion=never",
					"--all-scopes-completion=false",
					"--completion-style=bundled",
					"--cross-file-rename",
					"--enable-config",
					"--pch-storage=disk",
					"--header-insertion-decorators",
				},
				capabilities = capabilities,
			})
			vim.keymap.set('n', '<leader>h', vim.cmd.ClangdSwitchSourceHeader, {desc = "switch src/header"})
			vim.keymap.set('n', '<C-n>', function() vim.lsp.buf.hover() end, {desc = "hover"})
		end
	}
}
