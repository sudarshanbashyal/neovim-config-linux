require('gitsigns').setup{
	on_attach = function()
			vim.wo.signcolumn = "yes"
		end
}

