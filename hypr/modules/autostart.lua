-- modules/autostart.lua
-- Commands executed on Hyprland startup

local M = {}

function M.setup()
    hl.on("hyprland.start", function()
        hl.exec_cmd("theme-switch.sh field")
        hl.exec_cmd("we-fullscreen-handler.sh")
        hl.exec_cmd("powerprofilesctl set performance")
        hl.exec_cmd("waybar -c /home/ricetest/.config/waybar/scripts/config.jsonc")
        hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
        hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")
    end)
end

return M
