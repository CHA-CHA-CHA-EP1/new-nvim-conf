-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable autoformat for specific filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml", "sh" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Disable autoformat for .env files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".env", ".env.*", "*.env" },
  callback = function()
    vim.b.autoformat = false
  end,
})
