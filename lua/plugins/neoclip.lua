return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		-- you'll need at least one of these
		{ "nvim-telescope/telescope.nvim" },
	},
	config = function()
		require("neoclip").setup()
		vim.keymap.set("n", "<leader>cp", "<cmd>Telescope neoclip<CR>", {})
	end,
}
