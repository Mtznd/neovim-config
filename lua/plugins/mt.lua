vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }
vim.pack.add { 'https://github.com/taybart/b64.nvim' }
vim.cmd.colorscheme 'tokyonight-night'

vim.o.shell = 'nu.exe'
vim.opt.sh = 'nu'
vim.opt.shellcmdflag = '-c'
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
