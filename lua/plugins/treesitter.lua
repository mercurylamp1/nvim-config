return {
	{
		'nvim-treesitter/nvim-treesitter',
		event = "VeryLazy",

		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = { "c", "cpp", "lua","vim", "vimdoc", "zig"},
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
