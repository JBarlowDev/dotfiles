return {
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' }, -- optional, for file icon
    opts = {
      sync_root_with_cwd = true,
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  }
}
