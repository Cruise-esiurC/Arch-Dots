-- modules/env.lua
-- Environment variable exports
-- Note: prefer ~/.config/uwsm/env for GTK/Qt vars if using uwsm

local M = {}

function M.setup()
    hl.env("GTK_THEME",            "Adwaita-dark")
    hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
    hl.env("QT_STYLE_OVERRIDE",    "kvantum")
    hl.env("XDG_CURRENT_DESKTOP",  "Hyprland")
end

return M
