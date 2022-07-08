require('orgmode').setup_ts_grammar()

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'javascript', 'typescript', 'tsx', 'org'},
  highlight = {
      enable = true,
			additional_vim_regex_highlighting = {'org'}
  }
}

