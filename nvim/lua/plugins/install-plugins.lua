local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', 1, 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost install-plugins.lua PackerCompile'

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    -- theme, statusline, tabline
    use {'ellisonleao/gruvbox.nvim'}
    -- use {'folke/tokyonight.nvim'}
    -- use {'glepnir/zephyr-nvim'}

    use {'nvim-lualine/lualine.nvim'}
    use {'akinsho/bufferline.nvim'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'lukas-reineke/indent-blankline.nvim'}

    -- fuzzy finder
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- lsp rust
    use {'neovim/nvim-lspconfig'}
    use {'simrat39/rust-tools.nvim'}

    -- Completion framework
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}

    -- For vsnip users.
    -- use {'hrsh7th/vim-vsnip'}
    -- use {'hrsh7th/cmp-vsnip'}

    -- For luasnip users.
    use {'L3MON4D3/LuaSnip'}
    use {'saadparwaiz1/cmp_luasnip'}

    -- use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
    -- use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets

    -- syntax edition
    use {'tpope/vim-surround'}
    use {'preservim/nerdcommenter'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                languages = {
                    "rust",
                    "c",
                    "cpp",
                    "bash",
                    "cmake",
                    "diff",
                    "dockerfile",
                    "gitignore",
                    "gitcommit",
                    "javascript",
                    "json",
                    "python",
                    "toml",
                    "glsl",
                    "yaml",
                    "solidity"
                },
                with_sync = true
            })
            ts_update()
        end,
    }

    -- solidity. Waiting for treesitter support
    -- use {'tomlion/vim-solidity'}

    -- yul
    use { 'mattdf/vim-yul' }

    use {'ggandor/lightspeed.nvim'}

    -- File explorer
    use {'nvim-tree/nvim-tree.lua'}
end)
