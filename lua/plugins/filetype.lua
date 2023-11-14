return {
	{
		"nathom/filetype.nvim",
		lazy = true,
		event = "User FileOpened",
		config = function()
			require("filetype").setup({
				overrides = {
					extensions = {
						h = "cpp"
					}
				}
			})

			vim.filetype.add({
				extension = {
					mdx = "mdx"
				}
			})
		end,
	}
}
