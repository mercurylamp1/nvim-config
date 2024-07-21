return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		 },
		config = function()
			local cmp = require'cmp'
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				window = {},
				mapping = cmp.mapping.preset.insert({
					['C-b'] = cmp.mapping.scroll_docs(-4),
					['C-f'] = cmp.mapping.scroll_docs(4),
					['C-Space'] = cmp.mapping.complete(),
					['C-e'] = cmp.mapping.abort(),
					['<S-Tab>'] = cmp.mapping(function(fallback) 		--TODO: 
						if vim.snippet.active({direction = -1}) then
							vim.snippet.jump(-1)
						else
							fallback()
						end
					end),
					['<Tab>'] = cmp.mapping(function(fallback)
						if vim.snippet.active({direction = 1}) then
							vim.snippet.jump(1)
						elseif cmp.visible() then
							cmp.confirm({select = true})
						else
							fallback()
						end
					end),
				}),
				sources = cmp.config.sources({
					{name = 'nvim_lsp'}, }, { {name = 'buffer'},
					}),
				})
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}
			}),
				matching = { disallow_symbol_nonprefix_matching = false },
			})
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require('lspconfig')['clangd'].setup {
				capabilities = capabilities
			}
		end
	}
}
