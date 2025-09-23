local plugins = {}

-- LSP-related plugins
local lsp_plugins = require("plugins.lsp")
vim.list_extend(plugins, lsp_plugins)

-- UI plugins (which-key, snacks)
local ui_plugins = require("plugins.ui")
vim.list_extend(plugins, ui_plugins)

-- File explorer
local file_plugins = require("plugins.file_explorer")
vim.list_extend(plugins, file_plugins)

-- Utilities / dependencies
local utils_plugins = require("plugins.utils")
vim.list_extend(plugins, utils_plugins)

-- Strudel
local strudel_plugins = require("plugins.strudel")
vim.list_extend(plugins, strudel_plugins)

return plugins
