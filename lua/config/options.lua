-- Set the default shell based on the OS type
if string.match(string.lower(vim.loop.os_uname().sysname), 'windows') then
  -- Windows-specific shell setup
  vim.o.shell = 'powershell.exe -NoProfile'
  vim.o.shellcmdflag = '-command'
  vim.o.shellquote = [[\"]]
else
  -- Linux (Debian) specific shell setup
  vim.o.shell = '/bin/bash'  -- Or use '/usr/bin/zsh', '/bin/fish', etc.
  vim.o.shellcmdflag = '-c'
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
