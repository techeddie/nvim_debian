-- local colorscheme = "onedark"
-- local colorscheme = "rose-pine-moon"
-- local colorscheme = "rose-pine-main"
-- local colorscheme = "dracula"
-- local colorscheme = "wildcharm"
-- local colorscheme = "tokyonight"
-- local colorscheme = "codedark"
-- local colorscheme = "gruvbox"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end



-- tokyonight-moon: high truecolor contrast (good for remote/SSH terminals),
-- excellent treesitter/LSP coverage, and its blue-purple palette pairs with
-- the purple remote-tmux frame. Alternatives already installed:
-- rose-pine-moon (softer), gruvbox, onedark, tokyonight (darker "night").
local ok = pcall(require, "tokyonight")
if ok then
  require("tokyonight").setup({
    style = "moon",
    -- let the tmux pane background show through -> active pane (pure black)
    -- vs. inactive pane stays visually distinct even inside nvim
    transparent = true,
    styles = { sidebars = "transparent", floats = "transparent" },
  })
end

if not pcall(vim.cmd, "colorscheme tokyonight-moon") then
  pcall(vim.cmd, "colorscheme gruvbox")
end
