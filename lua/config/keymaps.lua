-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Open netrw file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>", { desc = "Explorer" })

-- Ctrl+\ to suspend Neovim (same as Ctrl+Z), use `fg` to return
vim.keymap.set("n", "<C-\\>", "<cmd>suspend<cr>", { desc = "Suspend Neovim" })

-- Toggle theme between mono and dracula with <leader>ut
vim.keymap.set("n", "<leader>ut", function()
  if vim.g.colors_name == "mono" then
    vim.cmd("colorscheme dracula")
  else
    vim.cmd("colorscheme mono")
  end
end, { desc = "Toggle theme (mono/dracula)" })
