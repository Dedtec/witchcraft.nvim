-- Copyright (c) 2021-2022 tiagovla
-- License: MIT
--
local p = require("witchcraft.palette")
local colors = {
    bg = p.bg1,
    fg = p.fg,
    red = p.red,
    green = p.green,
    yellow = p.yellow,
    blue = p.blue,
    purple = p.purple,
    cyan = p.cyan,
    grey = p.grey,
	none = p.none,
}

local witch_craft = {
    inactive = {
        a = { fg = colors.grey, bg = colors.none, gui = "bold" },
        b = { fg = colors.grey, bg = colors.none },
        c = { fg = colors.grey, bg = colors.none },
        x = { fg = colors.grey, bg = colors.none },
        y = { fg = colors.grey, bg = colors.none },
        z = { fg = colors.grey, bg = colors.none },
    },
    normal = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.none },
        c = { fg = colors.fg, bg = colors.none },
        x = { fg = colors.fg, bg = colors.none },
        y = { fg = colors.fg, bg = colors.none },
        z = { fg = colors.fg, bg = colors.none },
    },
    visual = {
		a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
		b = { fg = colors.purple, bg = colors.none } },
    replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.red, bg = colors.none } },
    insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.green, bg = colors.none } },
}

local mt = {}
function mt:__index(k)
    if k == "colors" then
        return colors
    end
end

witch_craft = setmetatable(witch_craft, mt)

return witch_craft
