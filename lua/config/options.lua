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

-- Disable all helpers for .env files (like plain vim)
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".env", ".env.*", "*.env" },
  callback = function()
    vim.b.autoformat = false
    vim.diagnostic.enable(false, { bufnr = 0 }) -- disable diagnostics/linting
    vim.cmd("LspStop") -- stop LSP for this buffer
  end,
})
