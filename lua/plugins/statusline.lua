return {
  -- Disable lualine
  { "nvim-lualine/lualine.nvim", enabled = false },

  -- Disable winbar / breadcrumbs
  { "SmiteshP/nvim-navic", enabled = false },

  -- Hide statusline
  {
    "LazyVim/LazyVim",
    init = function()
      vim.opt.laststatus = 0
      vim.opt.ruler = false
      vim.opt.showmode = false
      vim.opt.showtabline = 0
    end,
  },
}
