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
        { "<leader>l", group = "lsp" },
        { "<leader>s", group = "search" },
        { "<leader>c", group = "cwd" },
        { "<leader>m", group = "menu" },
      })
    end,
  },
}
