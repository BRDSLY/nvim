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

