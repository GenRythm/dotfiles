require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

Keymap.g({
    { 'n', '<Leader>=', [[<Plug>kommentary_line_default]], {}},
    { 'v', '<Leader>=', [[<Plug>kommentary_visual_default]], {}},
})
