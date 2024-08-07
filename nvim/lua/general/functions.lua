-- open terminal on ctrl+n
vim.api.nvim_exec(
[[
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
]], true)

-- clear all registers
vim.api.nvim_exec(
[[
fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun
]], true)

-- removes any extraneous whitespace at the end of the lines
vim.api.nvim_exec(
[[
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
]], true)

vim.lsp.inlay_hint.enable()
