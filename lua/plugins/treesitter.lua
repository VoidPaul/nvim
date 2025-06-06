return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "bash",
        "lua",
        "kotlin",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "html",
        "css",
        "json",
        "vue",
        "gitignore",
        "python",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
