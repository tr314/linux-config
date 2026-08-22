-- ===========================================================================
-- Vim configuration
-- Tab settings
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.tabstop = 4

-- Set column line
vim.opt.cc = '79'

-- Highlight current line
vim.opt.cursorline = true

-- Show line numbers.
vim.opt.number = true
-- ===========================================================================

-- ===========================================================================
-- Python LSP
vim.lsp.config['pyright'] = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
    '.git',
  },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}

vim.lsp.enable('pyright')   
-- ===========================================================================

-- ===========================================================================
-- Configure debugger

-- ===========================================================================
-- Install packages

-- Debugger packages
vim.pack.add{
        { src = 'https://github.com/mfussenegger/nvim-dap.git',
        dependencies = 
            'https://github.com/rcarriga/nvim-dap-ui.git',
            'https://github.com/nvim-neotest/nvim-nio.git',
            'https://github.com/rcarriga/nvim-dap-virtual-text.git'
    }
}

local dap = require('dap')

-- ===========================================================================
vim.pack.update()
-- ===========================================================================

