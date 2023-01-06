
-- not working at all (╯°□°）╯︵ ┻━┻
-- require'lspconfig'.solang.setup{
--     cmd = { "solang", "--language-server" },
--     filetypes = { "solidity" },
--     -- root_dir = root_pattern(".git"),
-- }

local nvim_lsp = require'lspconfig'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({
    capabilities=capabilities,
    -- on_attach is a callback called when the language server attachs to the buffer
    -- on_attach = on_attach,
    settings = {
        -- to enable rust-analyzer settings visit:
        -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
        ["rust-analyzer"] = {
            cargo = {
                loadOutDirsFromCheck = true
            },
            completion = {
                autoimport = {
                    enable = true,
                },
                postfix = {
                    enable = true,
                },
            },
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
            },
            inlayHints = {
                maxLength = 40
            }
        }
    }
})

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

-- Enable type inlay hints
-- vim.cmd [[autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
-- \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }]]

require'lsp_extensions'.inlay_hints{
    highlight = "Comment",
    prefix = " > ",
    aligned = false,
    only_current_line = false,
    enabled = { "ChainingHint" }
}

