-- modules/keybinds.lua
-- All keybind definitions
-- Requires the variables module to be passed in

local M = {}

function M.setup(vars)
    local mod = vars.mainMod

    -- ── App launchers ──────────────────────────────────────────────────────────

    hl.bind(mod .. " + return",    hl.dsp.exec_cmd(vars.terminal))
    hl.bind("ALT + F4",            hl.dsp.window.close())
    hl.bind(mod .. " + M",         hl.dsp.exec_cmd(
        "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"
    ))
    hl.bind(mod .. " + E",         hl.dsp.exec_cmd(vars.fileManager))
    hl.bind(mod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
    hl.bind(mod .. " + D",         hl.dsp.exec_cmd(vars.menu))
    hl.bind(mod .. " + F",         hl.dsp.exec_cmd(vars.browser))

    -- ── Screenshot ─────────────────────────────────────────────────────────────

    hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd(
        "grim -g \"$(slurp)\" - | tee ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png | wl-copy"
    ))

    -- ── Workspaces (1–10) ──────────────────────────────────────────────────────

    for i = 1, 10 do
        local key = i % 10  -- key 0 maps to workspace 10
        hl.bind(mod .. " + " .. key,           hl.dsp.focus({ workspace = i }))
        hl.bind(mod .. " + SHIFT + " .. key,   hl.dsp.window.move({ workspace = i }))
    end

    -- ── Mouse binds ────────────────────────────────────────────────────────────

    hl.bind("ALT + mouse:272",   hl.dsp.window.resize(), { mouse = true })
    hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
end

return M
