return {
  { "mason-org/mason.nvim",          opts = {} },
  { "mason-org/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    "mason-org/mason.nvim",
    lazy = false,
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          width = 0.8,
          height = 0.8,
        }
      })
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- Config
          "lua_ls",
          -- Web
          "vtsls",
          "vuels",
          "tailwindcss",
          "eslint",
          "html",
          "jsonls",
          -- C Family
          "clangd",
          "cmake",
          -- Rust
          "rust_analyzer",
        },
      })
    end,
  },
}
