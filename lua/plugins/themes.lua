return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local transparency = true
    require("kanagawa").setup({
      undercurl = true,
      transparent = transparency,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
    })
    vim.cmd [[colorscheme kanagawa-wave]]
    if transparency then
      vim.cmd [[highlight TelescopeBorder guibg=none]]
      vim.cmd [[highlight TelescopeTitle guibg=none]]
    end
  end
}
