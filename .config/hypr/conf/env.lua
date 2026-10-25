---@module 'hl'

-- ==============================================================================
-- PRO ARCHITECTURE: Environment Variables
-- Stripped down to the bare essentials for Wayland + NVIDIA.
-- Redundant XDG vars and legacy OpenGL/Vulkan fallbacks have been eliminated.
-- ==============================================================================

-- Core NVIDIA Hardware Acceleration (DISABLED for Battery/Cooling)
-- WARNING: Enabling these forces all apps to use the dedicated GPU, causing 
-- 20W+ idle power draw and loud fans (4700 RPM).
-- hl.env("LIBVA_DRIVER_NAME", "nvidia")
-- hl.env("GBM_BACKEND", "nvidia-drm")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- Wayland Toolkit Enforcers
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Electron / Chromium Native Wayland Support
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Single-GPU Setup (Intel iGPU ONLY for 0W dGPU sleep)
-- dGPU is used strictly on-demand via prime-run for gaming.
local function file_exists(path)
    local f = io.open(path, "r")
    if f then
        f:close()
        return true
    end
    return false
end

local igpu = "/dev/dri/intel-igpu"
local aq_devices = ""

if file_exists(igpu) then
    aq_devices = igpu
else
    -- Fallback: detect which card drives the internal display eDP-1
    if file_exists("/sys/class/drm/card0-eDP-1/status") then
        aq_devices = "/dev/dri/card0"
    else
        aq_devices = "/dev/dri/card1"
    end
end

hl.env("AQ_DRM_DEVICES", aq_devices)
