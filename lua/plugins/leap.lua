return {
	{
		"ggandor/leap.nvim",
		keys = { "r", "R", "W", "dr", "dR", "yr", "yR", "cr", "cR" },
		config = function()
			require("leap").opts.highlight_unlabeled_phase_one_targets = true
			-- leap.add_default_mappings()
			vim.keymap.set({ "x", "o", "n" }, "r", "<Plug>(leap-forward-to)")
		        vim.keymap.set({ "x", "o", "n" }, "R", "<Plug>(leap-backward-to)")
        		vim.keymap.set({ "x", "o", "n" }, "W", "<Plug>(leap-from-window)")
		end,
	},
	{
		"ggandor/flit.nvim",
		keys = { "f", "F", "t", "T" },
		dependencies = { "ggandor/leap.nvim" },
		config = function()
			require("flit").setup({
				keys = {
					f = "f",
					F = "F",
					t = "t",
					T = "T",
				},
				labeled_modes = "v",
				multiline = true,
				opts = {},
			})
		end,
	},
	{
		"phaazon/hop.nvim",
		keys = { "E" },
		config = function()
			require("hop").setup({})

			-- vim.api.nvim_set_keymap("n", "R", "<cmd>HopChar2<cr>", { silent = true })
		        vim.api.nvim_set_keymap("n", "E", "<cmd>HopChar1<cr>", { silent = true })
        		-- vim.api.nvim_set_keymap("n", "U", "<cmd>HopWord<cr>", { silent = true })
        		-- vim.api.nvim_set_keymap("n", "C", "<cmd>HopLine<cr>", { silent = true })
		        -- vim.api.nvim_set_keymap("n", "P", "<cmd>HopPattern<cr>", { silent = true })
		end,
	}
}
