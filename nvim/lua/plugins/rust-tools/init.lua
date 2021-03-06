local opts = {
    tools = {
        autoSetHints = true,
        hover_with_actions = true,

        runnables = {
            -- whether to use telescope for selection menu or not
            use_telescope = true
        },

        debuggables = {
            -- whether to use telescope for selection menu or not
            use_telescope = true
        },

        -- These apply to the default RustSetInlayHints command
        inlay_hints = {
            -- only_current_line_autocmd = "CursorHold",
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "ᐅ ",
            -- max_len_align = false,
            -- max_len_align_padding = 1,

            -- whether to align to the extreme right or not
            -- right_align = false,

            -- padding from the right if right_align is true
            -- right_align_padding = 7,

            -- The color of the hints
            -- highlight = "Comment",
        },

        hover_actions = {
            -- the border that is used for the hover window
            -- see vim.api.nvim_open_win()
            border = {
                {"╭", "FloatBorder"}, {"─", "FloatBorder"},
                {"╮", "FloatBorder"}, {"│", "FloatBorder"},
                {"╯", "FloatBorder"}, {"─", "FloatBorder"},
                {"╰", "FloatBorder"}, {"│", "FloatBorder"}
            },

            -- whether the hover action window gets automatically focused
            auto_focus = false
        },

        -- settings for showing the crate graph based on graphviz and the dot
        -- command
        crate_graph = {
            -- Backend used for displaying the graph
            -- see: https://graphviz.org/docs/outputs/
            -- default: x11
            backend = "x11",
            -- where to store the output, nil for no output stored (relative
            -- path from pwd)
            -- default: nil
            output = nil,
            -- true for all crates.io and external crates, false only the local
            -- crates
            -- default: true
            full = true,
        }
    },

    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
                procMacro = {
                    enable = true
                },
                diagnostics = {
                    disabled = {
                        "unresolved-proc-macro",
                        "inactive-code"
                    }
                }
            }
        }
    }
}

require('rust-tools').setup(opts)
