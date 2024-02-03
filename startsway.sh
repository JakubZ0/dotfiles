#!/bin/sh
export XDG_CURRENT_DESKTOP="sway"
export XDG_SESSION_TYPE="sway"
export XDG_SESSION_DESKTOP="sway"

# Config folder
export XDG_CONFIG_HOME="${HOME}/.config"

# User binaries folder
export PATH="${HOME}/.local/bin:${PATH}"

# Cursor theme
export XCURSOR_PATH="/usr/share/icons"
export XCURSOR_PATH="${XCURSOR_PATH}:${HOME}/.local/share/icons:${HOME}/.icons"
export XCURSOR_THEME="Catppuccin-Mocha-Dark-Cursors"
export XCURSOR_SIZE="32"

# GTK
# PORTAL option needed to use thunar file browser by default on apps
#export GTK_THEME="Adwaita:dark"
export GTK_THEME="Catppuccin-Mocha-Standard-Rosewater-Dark"
export GTK_USE_PORTAL="1"

# QT
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export QT_AUTO_SCREEN_SCALE_FACTOR="1"
# Firefox
export MOZ_ENABLE_WAYLAND="1"


# Default applications
export TERM="kitty"
export BROWSER="firefox"
export VISUAL="nvim"
export EDITOR="nvim"

# Start Sway
exec sway

