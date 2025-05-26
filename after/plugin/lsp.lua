-- Options for displaying errors/warnings/hints
vim.diagnostic.config({ 
    virtual_text = {
	prefix = ""
    }, 
    signs = false, 
    severity_sort = true,
    update_in_insert = false,
})

-- Keymaps for viewing/navigating diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
vim.keymap.set('n', '<leader>j', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>k', vim.diagnostic.goto_prev, {})
