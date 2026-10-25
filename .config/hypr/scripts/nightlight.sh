#!/usr/bin/env bash
# ~/.config/hypr/scripts/nightlight.sh — Toggle or control hyprsunset Night Light

if pgrep -x "hyprsunset" > /dev/null; then
    pkill -x "hyprsunset"
    notify-send "☀️ Kunduzgi rejim" "Ko'zni himoyalash (Night Light) o'chirildi" \
        --icon="weather-clear-symbolic" \
        --urgency=low \
        --expire-time=2000 \
        --hint="string:x-canonical-private-synchronous:hypr-nightlight"
else
    nohup hyprsunset >/dev/null 2>&1 &
    notify-send "🌙 Tungi rejim" "Ko'zni himoyalash (Night Light) yoqildi" \
        --icon="weather-clear-night-symbolic" \
        --urgency=low \
        --expire-time=2000 \
        --hint="string:x-canonical-private-synchronous:hypr-nightlight"
fi
