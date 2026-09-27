# FDE (Farrukh's Desktop Environment) 🚀

![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-1793D1?logo=arch-linux&logoColor=white&style=for-the-badge)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-00A58B?logo=wayland&logoColor=white&style=for-the-badge)
![Kitty](https://img.shields.io/badge/Terminal-Kitty-black?logo=gnome-terminal&style=for-the-badge)

Welcome to **FDE** — this is not just a collection of dotfiles. It is a fully configured, uncompromising, and blazing fast **Desktop Environment** built on top of Arch Linux and Hyprland. 

Designed for power users, **FDE** strips away the bloat (like old ML4W dependencies) and provides a pure, keyboard-driven, and highly optimized Linux experience.

## ✨ Features
- **Zero-Grace Lockscreen:** Bulletproof `hyprlock` configuration with instant frosted-glass blur and no grace period.
- **Blazing Fast Terminal:** ZSH startup in ~35ms, heavily optimized with Starship and custom professional aliases.
- **Native GUI Integrations:** Waybar directly calls native Linux tools (`blueman-manager`, `nm-connection-editor`, `btop`).
- **Smart Clipboard:** Rofi-based `cliphist` manager with safe decoding.
- **AI-Driven Setup:** Fully documented natural language setup guide (`AI_INSTRUCTIONS.md`) so AI agents can provision this exact environment autonomously.

## 📁 Repository Structure
- `.config/hypr/` - Core window manager logic (Lua-based architecture).
- `.config/waybar/` - Custom top panel configuration.
- `.config/kitty/` - Hardware-accelerated terminal with animated cursor trails.
- `.zshrc_custom` - Advanced shell aliases and paths.
- `AI_INSTRUCTIONS.md` - AI provisioning manifesto.

## 🛠️ Philosophy
FDE is built on the philosophy of **"Less is More, but Fast is Everything."** 
Every component is hand-picked, explicitly configured, and stripped of unnecessary dependencies to ensure maximum performance and a professional aesthetic.
