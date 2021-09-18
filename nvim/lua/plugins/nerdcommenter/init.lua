vim.api.nvim_set_var('NERDCreateDefaultMappings', 1)
vim.api.nvim_set_var('NERDSpaceDelims', 1)
vim.api.nvim_set_var('NERDCompactSexyComs', 1)
vim.api.nvim_set_var('NERDDefaultAlign', 'left')
vim.api.nvim_set_var('NERDCommentEmptyLines', 1)
vim.api.nvim_set_var('NERDTrimTrailingWhitespace', 1)
vim.api.nvim_set_var('NERDToggleCheckAllLines', 1)
-- vim.api.nvim_set_var('NERDCustomDelimiters', { 'c': { 'left': '/**','right': '*/' } })

Keymap.g({
    { 'n', '<Leader>=', [[<Plug>NERDCommenterToggle]], {}},
    { 'v', '<Leader>=', [[<Plug>NERDCommenterToggle]], {}},
})
