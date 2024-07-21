vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.confirm = true

vim.o.undofile = true
vim.o.signcolumn = "yes"
vim.o.scrolloff = math.floor(vim.fn.winheight(0) / 2 - 5)

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn' , { text = '', texthl = 'DiagnosticSignWarn'  })
vim.fn.sign_define('DiagnosticSignInfo' , { text = '', texthl = 'DiagnosticSignInfo'  })
vim.fn.sign_define('DiagnosticSignHint' , { text = '', texthl = 'DiagnosticSignHint'  })
