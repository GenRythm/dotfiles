-- Color table for highlights
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
        component_separators = {'|', '|'},
        section_separators = {'', ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch',
            {
                'diff',
                colored = true, -- displays diff status in color if set to true
                -- all colors are in format #rrggbb
                color_added = colors.green,
                color_modified = colors.yellow,
                color_removed = colors.red,
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
                sources = {'nvim_lsp'},
                sections = {'error', 'warn', 'info', 'hint'},
                color_error = colors.red,
                color_warn = colors.yellow,
                color_info = colors.green,
                color_hint = colors.cyan
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
        lualine_z = {'location'}
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
        lualine_a = {},
        lualine_b = {
            -- 'filetype'
            'filename'
        },
        lualine_c = {
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {}
}
