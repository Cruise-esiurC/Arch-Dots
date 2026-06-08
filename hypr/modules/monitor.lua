-- modules/monitor.lua
-- Monitor configuration
-- Ref: https://wiki.hypr.land/Configuring/Monitors/

local M = {}

function M.setup()
    hl.monitor({
        output   = "DP-2",
        mode     = "2560x1440@170",
        position = "0x0",
        scale    = 1,
    })
end

return M
