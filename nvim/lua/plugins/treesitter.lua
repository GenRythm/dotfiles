return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {

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
              "html",
              "yaml",
              "solidity"
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
