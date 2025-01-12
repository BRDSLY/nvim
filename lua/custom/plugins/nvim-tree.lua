return { -- Add nvim-tree
  'nvim-tree/nvim-tree.lua',
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {
      width = 30,
      relativenumber = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {},
    sync_root_with_cwd = true, -- Make tree reflect cwd
    on_attach = function(bufnr)
      local api = require 'nvim-tree.api'

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- Bind 'o' to open file and keep tree focused
      vim.keymap.set('n', 'o', function()
        local node = api.tree.get_node_under_cursor()
        api.node.open.edit(node)
        api.tree.focus()
      end, opts 'Open file and focus tree')
    end,
  },
  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
  },
}
