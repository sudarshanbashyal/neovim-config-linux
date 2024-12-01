-- Adds git related signs to the gutter, as well as utilities for managing changes
--
local opts = { noremap = true, silent = true }

return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
			signs_staged = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>hh", ":Gitsigns preview_hunk<CR>", opts)
			vim.keymap.set("n", "<leader>bb", ":Gitsigns toggle_current_line_blame<CR>", opts)
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
