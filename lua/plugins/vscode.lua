return {
	'Mofiqul/vscode.nvim',
	config = function()
		require'vscode'.setup({
			style = 'dark',
			transparent = true,
		})
		vim.cmd([[colorscheme vscode]])
	end,
}
