-- Globals
Option.g({
    encoding = "UTF-8",
    -- exrc = true,
    -- guicursor = "",
    -- nu = true,
    -- undodir = tostring(os.getenv("HOME")) .. "/.vim/undodir",
    -- undofile = true,
    -- incsearch = true,
    -- showmode = false,
    cmdheight = 2,
    -- compatible = false,
    -- errorbells = false,
    fileformats = "unix",
    list = true,
    listchars = "space:.,tab:>-",
    expandtab = true,
    smarttab = true,
    autoindent = true,
    smartindent = true,
    swapfile = false,
    tabstop = 4,
    shiftwidth = 4,
    guifont = "JetBrainsMono Nerd Font:h12",

    wrap = false,

    shell="/bin/zsh",

    --[[
    #-------------------------------------------------------------------------#
    #                                    EDITOR                               #
    #-------------------------------------------------------------------------#
    --]]
    -- remove highlighting after search is done
    hlsearch = true,

    -- auto code folding when openeing new file at level 1
    -- foldlevelstart = 1,

    -- enable mouse in vim. 'a' for all modes (normal, visual, insert & command)
    --mouse = 'a',

    -- 'backup' 'writebackup'   action  ~
    -- off       off    no backup made
    -- off       on     backup current file, deleted afterwards (default)
    -- on        off    delete old backup, backup current file
    -- on        on     delete old backup, backup current file
    backup = false,
    writebackup = true,

    -- write changes to swap file after "n" ms
    updatetime = 300,

    -- controls how short messages are displayed in status bar section
    shortmess = vim.o.shortmess .. 'c',

    -- open completion menu even for single item
    -- do not auto insert items from completion menu
    -- @warning - preview is removed. when it's on, default lsp opens a vertical tab
    completeopt = 'menu,menuone,noselect,noinsert',

    --[[
    #-------------------------------------------------------------------------#
    #                                    EDITING                              #
    #-------------------------------------------------------------------------#
    --]]
    smartcase = true,
    --ignorecase = true,

    -- shows the effects of a command incrementally
    --inccommand = 'nosplit',

    -- where to place the new split windows
    splitright = true,
    splitbelow = true,

    -- hide unsaved file when closing the buffer
    -- usually vim doesn't allow closing unsaved buffer unless you force it
    -- but with hidden option, buffer will be hidden when you close it
    -- vim will prompt you to save when closing vim editor
    hidden = true,

    --[[
    #-------------------------------------------------------------------------#
    #                                      UI                                 #
    #-------------------------------------------------------------------------#
    --]]
    termguicolors = true,

    --[[
    #-------------------------------------------------------------------------#
    #                                     OTHER                               #
    #-------------------------------------------------------------------------#
    --]]
    --
    -- assign unnamedplus register to clipboard
    -- anything in the clipboard can be pasted directly
    -- any yanked text will be copied to clipboard
    clipboard = 'unnamedplus'
})


Option.w({
    --[[
    #-------------------------------------------------------------------------#
    #                                    EDITOR                               #
    #-------------------------------------------------------------------------#
    --]]
    -- shows the number bar in left hand side of the window
    number = true,

    -- shows numbers relative to the current cursor position
    relativenumber = true,

    -- code folding method to syntax
    -- common methods will be used such as curly braces
    --foldmethod = 'syntax',

    -- error signs and warnings will be displayed in the number line
    -- usually it adds new column when signs, moving buffer to right side.
    -- adding a column create weird effect that's little bit hard for the eye
    signcolumn = 'yes',

    -- vim try to keep 100 lines below and above when scrolling
    -- if buffer cannot display more than 200 lines, cursor will stay in center
    -- and scroll the buffer
    -- scrolloff = 8,
    -- wrap = false,
    -- colorcolumn = "80",
})

Option.b({
})
