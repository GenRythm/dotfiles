-- (╯°□°）╯︵ ┻━┻
Keymap.g({
    --[[
    #-------------------------------------------------------------------------#
    #                                    CONFIG                               #
    #-------------------------------------------------------------------------#
    --]]
    -- reload nvim configuration file
    { 'n', '<Leader><CR>', ':luafile $MYVIMRC<CR>', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                  CURSOR MOVE                            #
    #-------------------------------------------------------------------------#
    --]]
    -- [ space + h ] move cursor to left window
    -- { 'n', '<Leader>h', '<Cmd>wincmd h<CR>', { noremap = true } },
    -- [ space + l ] move cursor to bottom window
    -- { 'n', '<Leader>j', '<Cmd>wincmd j<CR>', { noremap = true } },
    -- [ space + j ] move cursor to top window
    -- { 'n', '<Leader>k', '<Cmd>wincmd k<CR>', { noremap = true } },
    -- [ space + k ] move cursor to right window
    -- { 'n', '<Leader>l', '<Cmd>wincmd l<CR>', { noremap = true } },

    { 'n', '<C-p>', '<C-i>', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                CUT COPY PASTE                           #
    #-------------------------------------------------------------------------#
    --]]
    -- delete without yanking word
    { 'v', 'X', '"_d', { noremap = true } },
    { 'n', 'x', '"_x', { noremap = true } },

    -- delete&local-paste without yanking
    { 'v', '<Leader>p', '"+p', { noremap = true } },
    { 'n', '<Leader>p', '"+p', { noremap = true } },
    { 'x', 'p', '"_dP', { noremap = true } },

    -- yank it to clipboard
    { 'n', '<Leader>y', '"+y', { noremap = true } },
    { 'n', '<Leader>yy', '"+yy', { noremap = true } },
    { 'v', '<Leader>y', '"+y', { noremap = true } },

    -- Delete without yanking to clipboard
    { 'n', '<Leader>d', '"_d', { noremap = true } },
    { 'n', '<Leader>D', '"_D', { noremap = true } },
    { 'n', '<Leader>s', '"_s', { noremap = true } },
    { 'n', '<Leader>S', '"_S', { noremap = true } },

    { 'v', '<Leader>d', '"_d', { noremap = true } },
    { 'v', '<Leader>D', '"_D', { noremap = true } },
    { 'v', '<Leader>s', '"_s', { noremap = true } },
    { 'v', '<Leader>S', '"_S', { noremap = true } },

    { 'c', '<Leader>p', '<C-r>+', { noremap = true } },

    -- yank all the content of file to global register ?? (╯°□°）╯︵ ┻━┻
    -- { 'n', '<Leader>Y', 'gg"+yG', { noremap = true } },

    -- yank from the cursor position to the end of the line
    -- { 'n', 'Y', 'y$', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                EDITING                                  #
    #-------------------------------------------------------------------------#
    --]]
    { 'v', 'kj', '<esc>', { noremap = true } },
    { 'i', 'kj', '<esc>', { noremap = true } },
    { 't', 'kj', '<C-\\><C-n>', { noremap = true } },

    -- { 'n', 'hh', '^', { noremap = true } },
    -- { 'n', 'll', '$', { noremap = true } },
    -- { 'v', 'hh', '^', { noremap = true } },
    -- { 'v', 'll', '$', { noremap = true } },

    --[[
    #-------------------------------------------------------------------------#
    #                                RESIZE WINDOW                            #
    #-------------------------------------------------------------------------#
    --]]
    -- resize window
    -- { 'n', '<Leader>+', '<Cmd>vertical resize +5<CR>', { noremap = true } },
    -- { 'n', '<Leader>-', '<Cmd>vertical resize -5<CR>', { noremap = true } },
    -- { 'n', '<Leader>rp', '<Cmd>resize 100<CR>', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                            JUMP LIST MUTATIONS                          #
    #-------------------------------------------------------------------------#
    --]]
    -- { 'n', 'j', [[(v:count > 1 ? "m'" . v:count : '') . 'j']], { expr = true, noremap = true } },
    -- { 'n', 'k', [[(v:count > 1 ? "m'" . v:count : '') . 'k']], { expr = true, noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                MOVE LINE                                #
    #-------------------------------------------------------------------------#
    --]]
    -- move selected line to up/down
    -- { 'v', 'J', [[<Cmd>m '>+1<CR>gv=gv]], { noremap = true } },
    -- { 'v', 'K', [[<Cmd>m '<-2<CR>gv=gv]], { noremap = true } },
    -- { 'n', 'J', [[mzJ`z]], { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                   UNDO                                  #
    #-------------------------------------------------------------------------#
    --]]
    -- undo break points
    -- { 'i', ',', ',<c-g>u', { noremap = true } },
    -- { 'i', '.', '.<c-g>u', { noremap = true } },
    -- { 'i', '!', '!<c-g>u', { noremap = true } },
    -- { 'i', '?', '?<c-g>u', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                SEARCH WORD                              #
    #-------------------------------------------------------------------------#
    --]]
    -- search with next with centralized cursor
    -- { 'n', 'n', 'nzzzv', { noremap = true } },
    -- { 'n', 'N', 'Nzzzv', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                 TERMINAL                                #
    #-------------------------------------------------------------------------#
    --]]
    -- open terminal
    -- { 'n', '<Leader>\\t', '<Cmd>terminal<CR>', { noremap = true } },
    -- turn terminal to normal mode with escape
    -- { 't', '<Esc>', '<C-\\><C-n>', { noremap = true } },
    -- open neovim terminal
    -- { 'n', '<c-n>', '<Cmd>call OpenTerminal()<CR>', { noremap = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                  CODE NAVIGATION                        #
    #-------------------------------------------------------------------------#
    --]]
    -- use telescope builtin instead of these
    -- { 'n', 'gd', [[<cmd>lua vim.lsp.buf.definition()<CR>]],         { noremap = true, silent = true } },
    -- { 'n', 'gy', [[<cmd>lua vim.lsp.buf.type_definition()<CR>]],    { noremap = true, silent = true } },
    -- { 'n', 'gi', [[<cmd>lua vim.lsp.buf.implementation()<CR>]],     { noremap = true, silent = true } },
    -- { 'n', 'gr', [[<cmd>lua vim.lsp.buf.references()<CR>]],         { noremap = true, silent = true } },
    -- { 'n', 'ga', [[<cmd>lua vim.lsp.buf.code_action()<CR>]],        { noremap = true, silent = true } },
    { 'n', 'K',  [[<cmd>lua vim.lsp.buf.hover()<CR>]],              { noremap = true, silent = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                   DIAGNOSTICS                           #
    #-------------------------------------------------------------------------#
    --]]
    { 'n', 'g[', [[<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]],  { noremap = true, silent = true } },
    { 'n', 'g]', [[<cmd>lua vim.lsp.diagnostic.goto_next()<CR>]],  { noremap = true, silent = true } },
    { 'n', 'di', [[<cmd>lua vim.diagnostic.open_float()<CR>]],     { noremap = true, silent = true } },


    --[[
    #-------------------------------------------------------------------------#
    #                                   OTHER                                 #
    #-------------------------------------------------------------------------#
    --]]
    -- remove highlight search!
    { 'n', '<Tab>', '<Cmd>nohlsearch<Bar>:echo<CR>', { noremap = true, silent = true } },
    -- ctrl-c
    -- { 'i', '<C-c>', '<esc>', { noremap = true } },
    -- Vim with me!! (customize theme with shortcut)
    -- { 'n', '<Leader>vwm', '<Cmd>call ColorMyPencils()<CR>', { noremap = true, silent = true } },
    -- Surprize me!! (random theme pick)
    -- { 'n', '<Leader>sm', '<Cmd>call SurpriseMe()<CR>', { noremap = true, silent = true } },

    { '', '<F3>', '<Cmd>bd!<CR>', {}},
    { '', '<F4>', '<Cmd>%bd|e#<CR>', {}},
    { '', '<F12>', '<Cmd>%bd!|:q<CR>', {}},
})
