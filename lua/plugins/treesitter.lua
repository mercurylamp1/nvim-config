return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = { "c", "cpp", "lua","vim", "vimdoc"},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false
				},
			}
		end
	}
}
