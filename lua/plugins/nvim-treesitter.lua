return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local ensure_installed = {
				"json",
				"json5",
				"jsonc",
				"yaml",
				"xml",
				"csv",
				"dot",
				"toml",
				"html",
				"css",
				"sql",
				"regex",
				"lua",
				"luadoc",
				"luap",
				"bash",
				"java",
				"python",
				"typescript",
				"tsx",
				"javascript",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline"
			}

			local highlight = {
				enable = true,
				additional_vim_regex_highlighting = false
			}

			local incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<CR>',
				        node_incremental = '<CR>',
				        node_decremental = '<BS>',
				        scope_incremental = '<TAB>',
				}
			}

			local indent = {
				enable = true
			}

            for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
                config.install_info.url = config.install_info.url:gsub("https://mirror.ghproxy.com/https://github.com/", "something else")                    
            end

			require("nvim-treesitter.configs").setup({
				ensure_installed = ensure_installed,
				highlight = highlight,
				incremental_selection = incremental_selection,
				indent = indent
			})

			vim.wo.foldmethod = "expr"
			vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

			vim.wo.foldlevel = 99
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			enable = true,
		}
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function(plun)
			require("colorizer").setup({
				user_default_options = {
					names = false,
				}
			})
		end,
	}
}
