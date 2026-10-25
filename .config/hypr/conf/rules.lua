---@module 'hl'

-- ==============================================
-- LAYER RULES (Frosted Glass & Animations)
-- ==============================================

-- 1. Status Bar & Panels
hl.layer_rule({
    name = "waybar",
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.1,
})

-- 2. Power & Session Menus
hl.layer_rule({
    name = "logout_dialog",
    match = { namespace = "logout_dialog" },
    blur = true,
    ignore_alpha = 0.1,
    animation = "fade",
})
hl.layer_rule({
    name = "wlogout",
    match = { namespace = "wlogout" },
    blur = true,
    ignore_alpha = 0.1,
    animation = "fade",
})

-- 3. Notification Center & Popups (SwayNC / Mako / Dunst)
hl.layer_rule({
    name = "swaync_control_center",
    match = { namespace = "swaync-control-center" },
    blur = true,
    ignore_alpha = 0.2,
    animation = "slide right",
})
hl.layer_rule({
    name = "swaync_notification_window",
    match = { namespace = "swaync-notification-window" },
    blur = true,
    ignore_alpha = 0.2,
})
hl.layer_rule({
    name = "notifications",
    match = { namespace = "notifications" },
    blur = true,
    ignore_alpha = 0.2,
})
hl.layer_rule({
    name = "mako",
    match = { namespace = "mako" },
    blur = true,
    ignore_alpha = 0.2,
})

-- 4. App Launchers & Pickers (Rofi / Wofi)
hl.layer_rule({
    name = "rofi",
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0.2,
    animation = "popin 80%",
})
hl.layer_rule({
    name = "wofi",
    match = { namespace = "wofi" },
    blur = true,
    ignore_alpha = 0.2,
    animation = "popin 80%",
})

-- ==============================================
-- WINDOW RULES (UI/UX Workflows)
-- ==============================================

-- 1. Modals & Popups
hl.window_rule({
    match = { title = "Open File" },
    float = true,
    center = true,
})
hl.window_rule({
    match = { title = "Open Folder" },
    float = true,
    center = true,
})
hl.window_rule({
    match = { title = "Save As" },
    float = true,
    center = true,
})

-- 2. System Utilities
local utils = { "pavucontrol", "blueman-manager", "nm-connection-editor", "nwg-look", "qalculate-gtk" }
for _, cls in ipairs(utils) do
    hl.window_rule({
        match = { class = cls },
        float = true,
        center = true,
        size = "800 600",
    })
end

-- 3. Picture-in-Picture (PiP)
hl.window_rule({
    match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    float = true,
    pin = true,
})

-- 4. Waypaper & Settings
local settings_apps = { "waypaper", "blueman-manager", "nm-connection-editor" }
for _, cls in ipairs(settings_apps) do
    hl.window_rule({
        match = { class = cls },
        float = true,
        center = true,
    })
end
