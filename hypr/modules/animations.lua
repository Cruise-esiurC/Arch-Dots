-- modules/animations.lua
-- Animation curves and per-leaf animation settings

local M = {}

function M.setup()
    hl.config({
        animations = {
            enabled = true,
        },
    })

    hl.curve("fluid", { type = "bezier", points = { {0.25, 1}, {0.5, 1} } })
    hl.curve("snappy", { type = "bezier", points = { {0.47, 0.03}, {.6, 1} } })

    hl.animation({ leaf = "windows",    enabled = true, speed = 3,   bezier = "fluid",   style = "popin 80%" })
    hl.animation({ leaf = "windowsOut", enabled = true, speed = 4,   bezier = "fluid",   style = "popin 80%" })
    hl.animation({ leaf = "border",     enabled = true, speed = 5,   bezier = "default" })
    hl.animation({ leaf = "fade",       enabled = true, speed = 4,   bezier = "default" })
    hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "fluid",   style = "slide" })
end

return M
