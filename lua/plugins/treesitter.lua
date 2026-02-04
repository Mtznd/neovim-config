return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require'nvim-treesitter.config'.compilers = { 'zig' }

      local ts = require'nvim-treesitter'
      ts.setup {
        install_dir = vim.fn.stdpath('data') .. '/site',
	highlight = {enabled = true}
      }
      ts.install{ 'lua' }
    end
  },
}
