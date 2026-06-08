-- modules/autostart.lua
-- Commands executed on Hyprland startup

local M = {}

function M.setup()
    hl.on("hyprland.start", function()
        hl.exec_cmd("systemctl --user enable --now hyprpaper.service")
        hl.exec_cmd("hyprpaper -c ~/.config/hypr/hyprpaper.conf")
        hl.exec_cmd("powerprofilesctl set performance")
        hl.exec_cmd("waybar")
        hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
        hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")
    end)
end

return M
