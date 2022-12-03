require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "go"},
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
		disable = {"vim"},
    additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
