-- ============================================================
--  theme.lua  ~  single source of truth for your rice
--  ~/.config/hypr/theme.lua
--
--  Usage in other modules:
--    local t = require("theme")
--    border_color = t.active.accent
-- ============================================================

local M = {}

-- ============================================================
--  THEMES
-- ============================================================

M.themes = {

  amber = {
    name       = "amber",
    wallpaper  = "INSERT_SCENE_ID",

    accent     = "#e0a33d",
    accent_dim = "#a87828",
    accent_glow= "#f0c060",

    bg         = "#0e0c09",
    bg_alt     = "#1a1710",
    bg_bar     = "rgba(14,12,9,0.85)",

    fg         = "#e8dcc8",
    fg_dim     = "#8a7a60",

    urgent     = "#cc4444",
    ok         = "#7ab87a",
    warn       = "#e0a33d",
  },

  nord = {
    name       = "nord",
    wallpaper  = "INSERT_SCENE_ID",

    accent     = "#88c0d0",
    accent_dim = "#5e81ac",
    accent_glow= "#a3d4e0",

    bg         = "#0f1117",
    bg_alt     = "#1e2230",
    bg_bar     = "rgba(15,17,23,0.85)",

    fg         = "#d8dee9",
    fg_dim     = "#4c566a",

    urgent     = "#bf616a",
    ok         = "#a3be8c",
    warn       = "#ebcb8b",
  },

  rose = {
    name       = "rose",
    wallpaper  = "INSERT_SCENE_ID",

    accent     = "#e88080",
    accent_dim = "#a84848",
    accent_glow= "#f0a8a8",

    bg         = "#100d0d",
    bg_alt     = "#1e1515",
    bg_bar     = "rgba(16,13,13,0.85)",

    fg         = "#e8d8d8",
    fg_dim     = "#7a5858",

    urgent     = "#cc4444",
    ok         = "#80b880",
    warn       = "#e0b060",
  },

  cyber = {
    name       = "cyber",
    wallpaper  = "INSERT_SCENE_ID",

    accent     = "#00ff99",
    accent_dim = "#009955",
    accent_glow= "#66ffbb",

    bg         = "#080d0a",
    bg_alt     = "#0f1a12",
    bg_bar     = "rgba(8,13,10,0.85)",

    fg         = "#ccffee",
    fg_dim     = "#336644",

    urgent     = "#ff3366",
    ok         = "#00ff99",
    warn       = "#ffcc00",
  },

  fogfield = {
    name       = "fogfield",
    wallpaper  = "3109356538",

    accent     = "#6b8c6b",
    accent_dim = "#3d5c3d",
    accent_glow= "#8aaa8a",

    bg         = "#0a0d0a",
    bg_alt     = "#111611",
    bg_bar     = "rgba(10,13,10,0.85)",

    fg         = "#c8d4c8",
    fg_dim     = "#4a5c4a",

    urgent     = "#8c4a4a",
    ok         = "#6b8c6b",
    warn       = "#8c7a4a",
  },

}

-- ============================================================
--  ACTIVE THEME  (change this string to switch themes)
-- ============================================================

M.active = M.themes["fogfield"]

-- ============================================================
--  HELPERS
-- ============================================================

function M.rgba(hex, alpha)
  hex = hex:gsub("#", "")
  local r = tonumber(hex:sub(1,2), 16)
  local g = tonumber(hex:sub(3,4), 16)
  local b = tonumber(hex:sub(5,6), 16)
  return string.format("rgba(%d, %d, %d, %.2f)", r, g, b, alpha or 1.0)
end

function M.bare(hex)
  return hex:gsub("#", "")
end

return M
