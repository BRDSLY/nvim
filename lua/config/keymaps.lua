local map = vim.keymap.set

-- General
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit" })
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
-- Change cwd (Oil aware)
map("n", "<leader>cd", function()
  local cwd
  if vim.bo.filetype == "oil" then
    cwd = require("oil").get_current_dir()
  else
    cwd = vim.fn.expand("%:p:h")
  end
  if cwd and cwd ~= "" then
    vim.cmd.cd(cwd)
    print("Changed directory to " .. cwd)
  else
    print("No directory found")
  end
end, { desc = "Change cwd to current dir" })


-- Resize windows with arrow keys
vim.keymap.set('n', '<left>', '<C-w>>')
vim.keymap.set('n', '<right>', '<C-w><')
vim.keymap.set('n', '<up>', '<C-w>+')
vim.keymap.set('n', '<down>', '<C-w>-')

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-left>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-right>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-down>', '<C-w>J', { desc = 'Move window to the bottom' })
vim.keymap.set('n', '<C-up>', '<C-w>K', { desc = 'Move window to the top' })

