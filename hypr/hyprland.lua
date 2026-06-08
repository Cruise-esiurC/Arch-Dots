-- hyprland.lua
-- Entry point — loads all modules in order
-- Requires Hyprland 0.55+
-- Ref: https://wiki.hypr.land/Configuring/Start/

local monitor    = require("modules.monitor")
local vars       = require("modules.variables")
local env        = require("modules.env")
local autostart  = require("modules.autostart")
local animations = require("modules.animations")
local keybinds   = require("modules.keybinds")

monitor.setup()
env.setup()
autostart.setup()
animations.setup()
keybinds.setup(vars)
