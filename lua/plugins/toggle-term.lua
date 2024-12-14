return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {},
		config = function()
			require("toggleterm").setup({
				direction = "float",
				start_in_insert = true,
				open_mapping = "<F12>",
			})

			-- Normal mode mappings for Floaterm
			vim.api.nvim_set_keymap(
				"n",
				"<F7>",
				":lua require('toggleterm.terminal').Terminal:new():toggle()<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"t",
				"<F7>",
				[[<C-\><C-n>:lua require('toggleterm.terminal').Terminal:new():toggle()<CR>]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"i",
				"<F7>",
				[[<C-\><C-n>:lua require('toggleterm.terminal').Terminal:new():toggle()<CR>]],
				{ noremap = true, silent = true }
			)

			local toggleterm = require("toggleterm")
			local terminal = require("toggleterm.terminal")

			function Cycle_terminals(mode)
				local allTerminalSessions = terminal.get_all()
				local totalTerminalSessions = #allTerminalSessions

				if totalTerminalSessions == 1 then
					return
				end

				local focusedTerminalID = terminal.get_focused_id()
				local availableTerminalIDs = {}

				local focusedTerminalIndex = nil
				local prevTerminalSession = nil
				local nextTerminalSession = nil

				for i = 1, #allTerminalSessions do
					if allTerminalSessions[i]:is_focused() then
						focusedTerminalIndex = i
					end
					table.insert(availableTerminalIDs, allTerminalSessions[i].id)
				end

				for i = 1, #allTerminalSessions do
					if i == focusedTerminalIndex then
						prevTerminalSession = allTerminalSessions[i - 1]
						nextTerminalSession = allTerminalSessions[i + 1]
					end
				end

				if focusedTerminalID == 1 and mode == "prev" then
					return
				end

				if focusedTerminalID == totalTerminalSessions and mode == "next" then
					return
				end

				if mode == "prev" and prevTerminalSession == nil then
					return
				end

				if mode == "next" and nextTerminalSession == nil then
					return
				end

				if mode == "next" then
					toggleterm.toggle(nextTerminalSession.id)
					return
				end

				if mode == "prev" then
					toggleterm.toggle(prevTerminalSession.id)
					return
				end
			end

			-- Key mappings to cycle through visible terminals
			vim.api.nvim_set_keymap(
				"t",
				"<F9>",
				[[<C-\><C-n>:lua Cycle_terminals("next")<CR>]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"t",
				"<F8>",
				[[<C-\><C-n>:lua Cycle_terminals("prev")<CR>]],
				{ noremap = true, silent = true }
			)

			vim.api.nvim_set_keymap(
				"i",
				"<F9>",
				[[<C-\><C-n>:lua Cycle_terminals("next")<CR>]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"i",
				"<F8>",
				[[<C-\><C-n>:lua Cycle_terminals("prev")<CR>]],
				{ noremap = true, silent = true }
			)

			vim.api.nvim_set_keymap(
				"n",
				"<F9>",
				[[<Cmd>:lua Cycle_terminals("next")<CR>]],
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<F8>",
				[[<Cmd>:lua Cycle_terminals("prev")<CR>]],
				{ noremap = true, silent = true }
			)
		end,
	},
}
