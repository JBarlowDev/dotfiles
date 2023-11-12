local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup({
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' } -- optional, for file icon
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
	},
  {
    'nvim-telescope/telescope-ui-select.nvim'
  },
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate'
  },
  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
  },
  -- Completion 
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },

  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'rafamadriz/friendly-snippets' },

  -- LSP
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'j-hui/fidget.nvim' },
  -- Workspace
  { 'natecraddock/workspaces.nvim' },
  -- Bufferline
  { 'akinsho/bufferline.nvim' },
  -- Terminal
  { 'akinsho/toggleterm.nvim' },
  { 'folke/which-key.nvim' },
  { 'windwp/nvim-autopairs' },
  { 'terrortylor/nvim-comment' },

  --theme
  {
    'navarasu/onedark.nvim',
  }
})
