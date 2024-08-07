Keymap.g({
    --[[
    #-------------------------------------------------------------------------#
    #                                  FILE PICKERS                           #
    #-------------------------------------------------------------------------#
    --]]
    { 'n', '<Leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]],    { noremap = true } },
    { 'n', '<Leader>fg', [[<cmd>lua require('telescope.builtin').git_files()<CR>]],     { noremap = true } },
    { 'n', '<Leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]],       { noremap = true } },
    { 'n', '<Leader>gr', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]],     { noremap = true } },
    { 'n', '<Leader>gs', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]],     { noremap = true } },
    { 'n', '<Leader>git', [[<cmd>lua require('telescope.builtin').git_status()<CR>]],  { noremap = true } },
    { 'n', '<Leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]],     { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                  LSP PICKERS                            #
    #-------------------------------------------------------------------------#
    --]]
    { 'n', 'ga', [[<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]], { noremap = true, silent = true } },
    { 'n', 'gr', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true, silent = true } },
    { 'n', 'gi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true, silent = true } },
    { 'n', 'gd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true, silent = true } },
    { 'n', 'gy', [[<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>o', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>s', [[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]], { noremap = true, silent = true } },
    { 'n', '<Leader>a', [[<cmd>lua require('telescope.builtin').diagnostics()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_range_code_actions()<CR>]], { noremap = true, silent = true } },
    -- { 'n', '<Leader>T.B.D', [[<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<CR>]], { noremap = true, silent = true } },
})

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    config = function()
        require('telescope').setup{
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '-L',
                    -- '--ignore',
                    -- '--hidden',
                    '--color=never',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case',
                    '-u'
                },
                prompt_prefix = "> ",
                selection_caret = "> ",
                entry_prefix = "  ",
                initial_mode = "insert",
                selection_strategy = "reset",
                sorting_strategy = "descending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        mirror = false,
                    },
                    vertical = {
                        mirror = false,
                    },
                },
                file_sorter =  require'telescope.sorters'.get_fuzzy_file,
                file_ignore_patterns = {},
                generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
                winblend = 0,
                border = {},
                borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
                color_devicons = true,
                use_less = true,
                path_display = {},
                set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
                file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
                grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
                qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        
                -- Developer configurations: Not meant for general override
                buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                     -- the default case_mode is "smart_case"
                }
            },
            pickers = {
                find_files = {
                    follow = true
                }
            }
        }
    end,
    dependencies = { 'nvim-lua/plenary.nvim' }
}


