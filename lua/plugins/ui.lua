return {
  -- Snacks.nvim (picker)
  {
    "folke/snacks.nvim",
    opts = { picker = { enabled = true } },
    keys = {
      { "<leader>sf", function() require("snacks.picker").files() end, desc = "Find Files" },
      { "<leader>sg", function() require("snacks.picker").grep() end,  desc = "Live Grep" },
      { "<leader>sb", function() require("snacks.picker").buffers() end, desc = "Buffers" },
      { "<leader>sh", function() require("snacks.picker").help_tags() end, desc = "Help Tags" },
      { "<leader>sn", function() require("snacks.picker").files({ cwd = vim.fn.stdpath("config") }) end, desc = "Search Neovim config" },
    },
  },

  -- Which-key.nvim
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      win = { border = "rounded" },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.add({
        { "<leader>s", group = "search" },
        { "<leader>c", group = "cwd" },
        { "<leader>m", group = "menu" },
        { "<leader>K", vim.lsp.buf.hover, desc = "Hover Info" },
        { "<leader>a", vim.lsp.buf.code_action, desc = "Code Action" },
        { "<leader>f", vim.lsp.buf.format, desc = "Format Buffer" },
        { "<leader>g", group = "Go" },  -- group prefix
        { "<leader>gD", vim.lsp.buf.declaration, desc = "Go to Declaration" },
        { "<leader>gd", vim.lsp.buf.definition, desc = "Go to Definition" },
        { "<leader>gi", vim.lsp.buf.implementation, desc = "Go to Implementation" },
        { "<leader>gr", vim.lsp.buf.references, desc = "References" },
        { "<leader>r", vim.lsp.buf.rename, desc = "Rename" },
      })
    end
  }
}
