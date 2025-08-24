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
map('n', '<left>', '<C-w>>')
map('n', '<right>', '<C-w><')
map('n', '<up>', '<C-w>+')
map('n', '<down>', '<C-w>-')

-- Keybinds to make split navigation easier.
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<C-left>', '<C-w>H', { desc = 'Move window to the left' })
map('n', '<C-right>', '<C-w>L', { desc = 'Move window to the right' })
map('n', '<C-down>', '<C-w>J', { desc = 'Move window to the bottom' })
map('n', '<C-up>', '<C-w>K', { desc = 'Move window to the top' })

map('n', '<leader>ml', '<cmd>Lazy<CR>', { desc = 'lazy.nvim' })
map('n', '<leader>mm', '<cmd>Mason<CR>', { desc = 'mason.nvim' })

