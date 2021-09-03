local Keymap = {}

Keymap.add_global_keymaps = function (keymaps)
    for _, keymap in pairs(keymaps) do
        if(keymap[4] == nil)  then
            keymap[4] = {}
        end

        vim.api.nvim_set_keymap(
            keymap[1],
            keymap[2],
            keymap[3],
            keymap[4]
        )
    end
end

Keymap.add_buffer_keymaps = function (keymaps)
    for _, keymap in pairs(keymaps) do
        if(keymap[5] == nil)  then
            keymap[5] = {}
        end

        vim.api.nvim_buf_set_keymap(
            keymap[1],
            keymap[2],
            keymap[3],
            keymap[4],
            keymap[5]
        )
    end
end

Keymap.g = Keymap.add_global_keymaps
Keymap.b = Keymap.add_buffer_keymaps

return Keymap
