return {
  -- Disable neo-tree
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Enable netrw (LazyVim disables it by default)
  {
    "LazyVim/LazyVim",
    init = function()
      vim.g.loaded_netrw = nil
      vim.g.loaded_netrwPlugin = nil
      vim.cmd("runtime plugin/netrwPlugin.vim")
    end,
  },
}
