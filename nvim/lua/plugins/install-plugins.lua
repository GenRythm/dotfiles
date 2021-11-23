local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', 1, 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost install-plugins.lua PackerCompile'

return require('packer').startup(function()
    -- use {'wbthomason/packer.nvim', opt = true}

    -- theme, statusline, tabline
    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use {'nvim-lualine/lualine.nvim'}
    use {
        'kdheepak/tabline.nvim',
        config = function()
            require'tabline'.setup {
                -- Defaults configuration options
                enable = true,
                options = {
                    -- If lualine is installed tabline will use separators configured in lualine by default.
                    -- These options can be used to override those settings.
                    -- section_separators = {'', ''},
                    -- component_separators = {'', ''},
                    max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
                    show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
                    show_devicons = true, -- this shows devicons in buffer section
                    show_bufnr = true, -- this appends [bufnr] to buffer section,
                    show_filename_only = true, -- shows base filename only instead of relative path in filename
                }
            }
            vim.cmd[[
                set guioptions-=e " Use showtabline in gui vim
                set sessionoptions+=tabpages,globals " store tabpages and globals in session
            ]]
        end,
    }
    use {'kyazdani42/nvim-web-devicons'}
    use {'lukas-reineke/indent-blankline.nvim'}

    -- fuzzy finder
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}

    -- lsp rust
    use {'neovim/nvim-lspconfig'}
    use {'simrat39/rust-tools.nvim'}

    -- Completion framework
    use {
        "hrsh7th/nvim-cmp",
        requires = {
          "hrsh7th/vim-vsnip",
          "hrsh7th/cmp-buffer",
        }
    }
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-vsnip'}
    -- use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
    -- use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets

    -- syntax edition
    use {'tpope/vim-surround'}
    use {'preservim/nerdcommenter'}

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- solidity. Waiting for treesitter support
    use {'tomlion/vim-solidity'}
end)
