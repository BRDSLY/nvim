vim.g.have_nerd_font = true

-- Disable netrw - oil will be used instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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


