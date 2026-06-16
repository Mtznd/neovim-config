local oil_plugins = {
 'https://github.com/nvim-mini/mini.icons',
 'https://github.com/stevearc/oil.nvim',
}

vim.pack.add(oil_plugins)

require('mini.icons').setup{}
require('oil').setup {}
