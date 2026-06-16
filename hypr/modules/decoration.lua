-- ============================================================
--  decoration.lua
--  ~/.config/hypr/modules/decoration.lua
-- ============================================================

local t = require("theme")

return {
  decoration = {
    rounding = 8,

    blur = {
      enabled   = true,
      size      = 6,
      passes    = 2,
      new_optimizations = true,
    },

    drop_shadow    = true,
    shadow_range   = 12,
    shadow_color   = t.rgba(t.active.accent, 0.4),
    shadow_offset  = "0 4",
  },

  general = {
    gaps_in              = 4,
    gaps_out             = 8,
    border_size          = 2,
    ["col.active_border"]   = t.active.accent .. "ff",
    ["col.inactive_border"] = t.active.accent_dim .. "55",
  },
}
