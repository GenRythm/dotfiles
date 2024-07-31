Variable.g({
    -- loaded_matchparen = 1,
    mapleader = ' ',
})

Variable.g({
    -- neoformat
    -- neoformat_enabled_python = {'black'},
    -- Enable alignment
    -- neoformat_basic_format_align = 1,
    -- Enable tab to spaces conversion
    -- neoformat_basic_format_retab = 1,
    -- Enable trimmming of trailing whitespace
    -- neoformat_basic_format_trim = 1,
})

-- Variable.g({
--     vim_be_good_log_file = 1,
--     vim_apm_lig = 1,
--     python3_host_prog = tostring(os.getenv("HOME")) .. '/.asdf/shims/python',
-- })

-- local channel_id = vim.v.event.chan
-- vim.g.clipboard = {
--     name = 'neovide',
--     copy = {
--         ['+'] = function(lines, regtype)
--             vim.rpcnotify({channel_id}, 'neovide.set_clipboard', lines, regtype, '+')
--         end,
--         ['*'] = function(lines, regtype)
--             vim.rpcnotify({channel_id}, 'neovide.set_clipboard', lines, regtype, '*')
--         end,
--     },
--     paste = {
--         ['+'] = function()
--             return vim.rpcrequest({channel_id}, 'neovide.get_clipboard', '+')
--         end,
--         ['*'] = function()
--             return vim.rpcrequest({channel_id}, 'neovide.get_clipboard', '*')
--         end,
--     },
--     cache_enabled = 0
-- }
--
-- if vim.g.loaded_clipboard_provider then
--     vim.g.loaded_clipboard_provider = nil
--     vim.api.nvim_cmd( { cmd = 'runtime', args = { 'autoload/provider/clipboard.vim' } }, {} )
-- end

