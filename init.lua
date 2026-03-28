-- base
require "config.settings"
require "config.colorscheme"
require "config.keymaps"
require "config.plugins"
require "config.autocmds"
require "config.alias"

-- first run, don't load plugins
if PACKER_BOOTSTRAP then
  return
end

-- when plugins are installed
require "config.colorscheme"
require "plugconfig.buffergator"
require "plugconfig.bufferline"
require "plugconfig.cmp"
require "plugconfig.fzf"
require "plugconfig.gitsigns"
require "plugconfig.lualine"
require "plugconfig.nvim-tree"
require "plugconfig.sidebar"
require "plugconfig.startify"
