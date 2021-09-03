local vim = vim
local function plug(path, config)
  vim.validate {
    path = {path, 's'},
    config = {config, vim.tbl_islist, 'an array of packages'},
  }
  vim.fn["plug#begin"](path)
  for _, v in ipairs(config) do
    if type(v) == 'string' then
      vim.fn["plug#"](v)
    elseif type(v) == 'table' then
      local p = v[1]
      assert(p, 'Must specify package as first index.')
      v[1] = nil
      vim.fn["plug#"](p, v)
      v[1] = p
    end
  end
  vim.fn["plug#end"]()
end

plug(tostring(os.getenv("HOME")) .. '/.config/nvim/plugged', {
    'rust-lang/rust.vim',
    'arzg/vim-rust-syntax-ext',
    'cespare/vim-toml',
    'stephpy/vim-yaml',
    'ekalinin/dockerfile.vim',
    'tikhomirov/vim-glsl',
})

Command.cmd({
    'syntax enable',
    'filetype plugin indent on',
})