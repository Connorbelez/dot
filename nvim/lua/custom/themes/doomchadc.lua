-- Credits to original https://github.com/NTBBloodbath/doom-one.nvim This is modified version of it

local M = {}

M.base_30 = {
  white = "#bbc2cf",
  darker_black = "#22262e",
  black = "#282c34", --  nvim bg
  black2 = "#2e323a",
  one_bg = "#32363e", -- real bg of onedark
  one_bg2 = "#3c4048",
  one_bg3 = "#41454d",
  grey = "#494d55",
  grey_fg = "#53575f",
  grey_fg2 = "#5d6169",
  light_grey = "#676b73",
  red = "#ff6b5a",
  baby_pink = "#ff7665",
  pink = "#ff75a0",
  line = "#3b3f47", -- for lines like vertsplit
  green = "#98be65",
  vibrant_green = "#a9cf76",
  nord_blue = "#47a5e5",
  blue = "#51afef",
  yellow = "#ECBE7B",
  sun = "#f2c481",
  purple = "#dc8ef3",
  dark_purple = "#c678dd",
  teal = "#4db5bd",
  orange = "#ea9558",
  cyan = "#46D9FF",
  statusline_bg = "#2d3139",
  lightbg = "#3a3e46",
  pmenu_bg = "#98be65",
  folder_bg = "#51afef",
}

M.base_16 = {
  base00 = "#1f2329", -- default bg
  base01 = "#32363e", -- lighter bg 
  base02 = "#3c4048", -- selection
  base03 = "#4e525a",
  base04 = "#5a5e66",
  base05 = "#a7aebb",
  base06 = "#b3bac7",
  base07 = "#bbc2cf",
  base08 = "#ff6c6b", --variables
  base09 = "#ea9558", -- numbers, bools
  base0A = "#ECBE7B", -- classes, loops
  base0B = "#5dff88", -- strings, inherited clsses
  base0C = "#ff6c6b", -- support, reges
  base0E = "#c678dd", --keywords
  base0D = "#61afef", -- functions, methods, attributes
  base0F = "#c85a50",
}

-- M.base_16 = {
--   base00 = "#282c34",
--   base01 = "#32363e",
--   base02 = "#3c4048",
--   base03 = "#4e525a",
--   base04 = "#5a5e66",
--   base05 = "#a7aebb",
--   base06 = "#b3bac7",
--   base07 = "#bbc2cf",
--   base08 = "#ff6c6b",
--   base09 = "#ea9558",
--   base0A = "#ECBE7B",
--   base0B = "#98be65",
--   base0C = "#66c4ff",
--   base0D = "#dc8ef3",
--   base0E = "#48a6e6",
--   base0F = "#c85a50",
-- }

M.polish_hl = {
  ["@field"] = { fg = M.base_30.blue },
  ["@punctuation.bracket"] = { fg = M.base_30.yellow },
}

M.type = "dark"

M = require("base46").override_theme(M, "doomchad")

return M
