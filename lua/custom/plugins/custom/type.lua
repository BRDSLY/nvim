local M = {}

-- Helper function to get the current date in a given format
local function get_date(format)
  return os.date(format)
end

-- Function to insert the date at the current cursor position
local function insert_date(format)
  local date = get_date(format)
  local row, col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get current cursor position
  local line = vim.api.nvim_get_current_line()
  local new_line = line:sub(1, col) .. date .. line:sub(col + 1)
  vim.api.nvim_set_current_line(new_line)
  vim.api.nvim_win_set_cursor(0, { row, col + #date }) -- Move cursor after the inserted date
end

-- Keybindings for inserting dates
function M.setup()
  vim.api.nvim_set_keymap('n', '<leader>tdd', ":lua require('custom.plugins.custom.type').insert_date('%d-%m-%y')<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>td-', ":lua require('custom.plugins.custom.type').insert_date('%d-%m-%y')<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>td_', ":lua require('custom.plugins.custom.type').insert_date('%d_%m_%y')<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>td/', ":lua require('custom.plugins.custom.type').insert_date('%d/%m/%y')<CR>", { noremap = true, silent = true })
end

-- Public function for inserting date in a specific format
function M.insert_date(format)
  insert_date(format)
end

return M
