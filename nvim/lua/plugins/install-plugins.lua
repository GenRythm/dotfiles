local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', 1, 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost install-plugins.lua PackerCompile'

return require('packer').startup(function()

    use {'wbthomason/packer.nvim', opt = true}

    -- theme, airline theme
    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use {'folke/tokyonight.nvim'}
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

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

    -- syntax edition
    use {"blackCauldron7/surround.nvim",
        config = function()
            require "surround".setup {}
        end
    }
    use {'b3nj5m1n/kommentary'}

end)
