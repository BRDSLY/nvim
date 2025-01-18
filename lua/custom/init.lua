-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.vim-sleuth',
  require 'custom.plugins.which-key',
  require 'custom.plugins.telescope',
  require 'custom.plugins.lsp',
  require 'custom.plugins.autocomplete',
  require 'custom.plugins.autoformat',
  require 'custom.plugins.mini-nvim',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.oil',

  -- require 'custom.plugins.themes.brown',
  require 'custom.plugins.themes.ashen',
  require 'custom.plugins.themes.oldworld',

  -- custom
  require('custom.plugins.custom.type').setup(),
}
