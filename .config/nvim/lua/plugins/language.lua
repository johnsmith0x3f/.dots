return {
-- Treesitter {{{
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cpp",
					"ini",
					"lua",
					"markdown",
					"markdown_inline",
					"rasi",
					"vim",
					"vimdoc",
					"yuck"
				},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false
				},
				indent = {
					enable = true
				}
			})
		end
	},
-- }}}

-- LSP {{{

	-- Mason
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			require("lspconfig").clangd.setup({})
		end
	},

-- }}}

-- Language Specific {{{

	-- LaTeX
	{
		"lervag/vimtex",

		init = function()
			-- View PDF with zathura.
			vim.g.vimtex_view_method = "zathura"
			-- Disable pop-up warnings.
			vim.g.vimtex_quickfix_open_on_warning = 0
		end
	},

	-- Markdown
	{ "OXY2DEV/markview.nvim", lazy = false }

-- }}}
}
