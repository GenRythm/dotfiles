-- Color table for highlights
-- all colors are in format #rrggbb
local colors = {
    bg = '#202328',
    fg = '#bbc2cf',
    yellow = '#ECBE7B',
    cyan = '#008080',
    darkblue = '#081633',
    green = '#98be65',
    orange = '#FF8800',
    violet = '#a9a1e1',
    magenta = '#c678dd',
    blue = '#51afef',
    red = '#ec5f67',
    white = '#FAF9F6'
}

require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        -- section_separators = { left = '', right = ''},
        -- component_separators = { left = '', right = ''},
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch',
            {
                'diff',
                colored = true, -- displays diff status in color if set to true
                diff_color = {
                    added = { fg = colors.green },
                    modified = { fg = color_modified },
                    removed = { fg = color_removed },
                },
                symbols = {added = '+', modified = '~', removed = '-'} -- changes diff symbols
            }
        },
        lualine_c = {
            {
                'filename',
                path = 1
            }
        },
        lualine_x = {
            {
                'diagnostics', 
                sources = {'nvim_diagnostic'},
                sections = {'error', 'warn', 'info', 'hint'},
                diagnostics_color = {
                    error = { fg = colors.red },
                    warn = { fg = colors.yellow },
                    info = { fg = colors.green },
                    hint = { fg = colors.cyan },
                }
            },
        },
        lualine_y = {
            'encoding', 
            'fileformat', 
            {
                'filetype',
                colored = true
            },
        },
        lualine_z = {
            'location',
            'progress'
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
    --     lualine_a = {
    --     },
    --     lualine_b = {
    --     },
    --     lualine_c = {
    --         require'tabline'.tabline_buffers
    --     },
    --     lualine_x = {
    --         require'tabline'.tabline_tabs
    --     },
    --     lualine_y = {},
    --     lualine_z = {}
    },
    extensions = {}
}
