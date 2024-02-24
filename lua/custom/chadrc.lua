---@type ChadrcConfig
local M = {}
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local vim = vim
local opt = vim.opt
vim.ui.ext_multigrid = true
-- vim.opt:ui.ext_multigrid = true
-- vim.
M.ui = {
    theme = "chadula",
    theme_toggle = { "chadula", "one_light" },

    ext_multigrid = true,
    hl_override = highlights.override,
    hl_add = highlights.add,
    -- transparency = true,
}

M.plugins = "custom.plugins"

-- local harpoon = require "harpoon"
-- vim.keymap.set("n", "<leader>n", function()
--     harpoon:list():append()
-- end)
-- vim.keymap.set("n", "<C-e>", function()
--     harpoon.ui:toggle_quick_menu(harpoon:list())
-- end)
--
-- vim.keymap.set("n", "<C-1>", function()
--     harpoon:list():select(1)
-- end)
-- vim.keymap.set("n", "<C-2>", function()
--     harpoon:list():select(2)
-- end)
-- vim.keymap.set("n", "<C-3>", function()
--     harpoon:list():select(3)
-- end)
-- vim.keymap.set("n", "<C-4>", function()
--     harpoon:list():select(4)
-- end)
M.mappings = require "custom.mappings"

return M
