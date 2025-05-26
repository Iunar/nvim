vim.lsp.config['clangd'] = {
  -- Command and arguments to start the server.
  cmd = { 'clangd' },
  -- Filetypes to automatically attach to.
  filetypes = { 'c' },
  root_markers = { 'compile_commands.json', 'Makefile', '.git' },
}

vim.lsp.enable('clangd')
