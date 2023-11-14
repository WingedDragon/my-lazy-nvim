return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			opts = {
				file_explorer_title = "🥷 File Explorer",
				tab_style = "thin", -- options: thin, thick, slope, slant
				terminal_size = 0.7, -- control the float terminal only
				window_transparency = 0,
				auto_open_outline = false, -- options: true, false
			
				-- Starting screen header.
				home_header = {
					"                                                                                 ",
					" ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ ",
					" ██║  ██║██╔══██╗██╔══██╗██╔══██╗██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗",
					" ███████║███████║██████╔╝██║  ██║███████║███████║██║     █████╔╝ █████╗  ██████╔╝",
					" ██╔══██║██╔══██║██╔══██╗██║  ██║██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗",
					" ██║  ██║██║  ██║██║  ██║██████╔╝██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║",
					" ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝",
					"                                                                                 ",
				},
			}

			require("toggleterm").setup({
				size = function(term)
					if term.direction == "horizontal" then
						return 15
					elseif term.direction == "vertical" then
						return vim.o.columns * 0.4
					end
				end,
				highlights = {
					Normal = {
						link = "Normal",
					},
					NormalFloat = {
						link = "Normal",
					},
					FloatBorder = {
						link = "FloatBorder",
					},
					SignColumn = {
						link = "EndOfBuffer",
					},
					EndOfBuffer = {
						link = "EndOfBuffer",
					},
				},
				float_opts = {
					border = "rounded",
					-- winblend = copts.window_transparency,
					width = function(term)
						local columns = vim.api.nvim_get_option("columns")
						local w = math.floor(columns * copts.terminal_size)
						return (w < 20) and 20 or w
					end,
					height = function(term)
						local lines = vim.api.nvim_get_option("lines")
						local h = math.floor(lines * (copts.terminal_size + 0.1))
						return (h < 35) and 35 or h
					end,
				},
				persist_size = true,
				persist_mode = true,
				autochdir = true,
			})
		end,
	},
}
