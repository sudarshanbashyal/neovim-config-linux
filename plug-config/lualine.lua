require('lualine').setup {
    options={theme="kanagawa"},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'filename'},
			lualine_c = {'branch', 'diff', 'diagnostics'},
			lualine_x = {'encoding', 'fileformat'},
			lualine_y = {'progress'},
			lualine_z = {'filetype'}
		},
}
