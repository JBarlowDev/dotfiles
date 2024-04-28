require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'javascript', 'typescript', 'tsx', 'org', 'rust'},
  highlight = {
      enable = true,
			additional_vim_regex_highlighting = {'org'}
  }
}

