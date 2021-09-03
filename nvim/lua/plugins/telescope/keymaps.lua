Keymap.g({
    --[[
    #-------------------------------------------------------------------------#
    #                                  FILE PICKERS                           #
    #-------------------------------------------------------------------------#
    --]]
    { 'n', '<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]],    { noremap = true } },
    { 'n', '<Leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]],     { noremap = true } },
    { 'n', '<Leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]],       { noremap = true } },
    { 'n', '<Leader>fn', [[<cmd>lua require('telescope.builtin').file_browser()<CR>]],  { noremap = true } },
    { 'n', '<Leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]],     { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                  LSP PICKERS                            #
    #-------------------------------------------------------------------------#
    --]]
    { 'n', '<Leader>ga', [[<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>gr', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>gi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>gd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>o', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>s', [[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>a', [[<cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_range_code_actions()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<CR>]], { noremap = true, silent = true } },
})
