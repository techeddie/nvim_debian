-- local colorscheme = "onedark"
-- local colorscheme = "rose-pine-moon"
-- local colorscheme = "rose-pine-main"
-- local colorscheme = "dracula"
-- local colorscheme = "wildcharm"
-- local colorscheme = "tokyonight"
-- local colorscheme = "codedark"
local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
