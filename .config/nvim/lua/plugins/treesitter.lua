return {
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    opts = {
      ensure_installed = { 'lua', 'javascript', 'typescript', 'tsx', 'org', 'rust', 'markdown', 'markdown_inline' },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' }
      }
    }
  },
}
