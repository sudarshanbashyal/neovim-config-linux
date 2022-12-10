require('lualine').setup {
    options={theme="seoul256"},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'filename'},
			lualine_c = {'branch', 'diff', 'diagnostics'},
			lualine_x = {'encoding', 'fileformat'},
			lualine_y = {'progress'},
			lualine_z = {'filetype'}
		},
}
