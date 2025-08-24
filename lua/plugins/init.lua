return {
  -- Oil.nvim
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,
      view_options = { show_hidden = true },
    },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open oil" },
    },
  },

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
      })
    end,
  },

  -- Mason & LSP
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },


  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- LSP source
      "hrsh7th/cmp-buffer",       -- buffer words
      "hrsh7th/cmp-path",         -- filesystem paths
      "hrsh7th/cmp-cmdline",      -- command line completion
    },
    opts = function()
      local cmp = require("cmp")
      return {
        snippet = {
          expand = function(args)
            -- No snippet engine yet, you can add luasnip later
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
        }),
      }
    end,
  },

  -- Dependency
  "nvim-lua/plenary.nvim",
}

