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
