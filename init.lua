-- Neovim configuration entry point
-- Migrated from vim-jetpack + VimScript to lazy.nvim + Lua

-- Load original VimScript settings (keybinds preserved exactly)
vim.cmd("runtime basic.init.vim")
vim.cmd("runtime keymap.init.vim")

-- Treesitter compatibility shim for Neovim 0.11+
-- Telescope accesses ft_to_lang as a table (ft_to_lang[filetype]), not a function
if not vim.treesitter.language.ft_to_lang then
  vim.treesitter.language.ft_to_lang = setmetatable({}, {
    __index = function(_, filetype)
      return vim.treesitter.language.get_lang(filetype)
    end,
  })
end

-- Bootstrap lazy.nvim and load plugins
require("config.lazy")

-- Load additional Lua autocmds
require("config.autocmds")
