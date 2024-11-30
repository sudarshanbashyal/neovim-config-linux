-- info: Use :Mason to install other sources
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
			on_attach = function(client, bufnr)
				local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							vim.lsp.buf.format()
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
	end,
}
