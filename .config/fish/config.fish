set -q XDG_CONFIG_HOME || set XDG_CONFIG_HOME "$HOME/.config"

# █▀ █▀█ █░█ █▀█ █▀▀ █▀▀ █▀
# ▄█ █▄█ █▄█ █▀▄ █▄▄ ██▄ ▄█
# sources

source $XDG_CONFIG_HOME/fish/env.fish
source $XDG_CONFIG_HOME/fish/aliases.fish

# [zoxide] smarter cd command
zoxide init fish | source
# [starship] customizable prompt
starship init fish | source

# █▀ █▀▀ █▀█ █ █▀█ ▀█▀ █▀
# ▄█ █▄▄ █▀▄ █ █▀▀ ░█░ ▄█
# scripts

if status is-interactive
    # Commands to run in interactive sessions can go here
    # [atuin] shell history
    atuin init fish | source
end

# Welcome message
# https://fishshell.com/docs/current/interactive.html#configurable-greeting
function fish_greeting
    # [fastfetch] display system info
    # fastfetch
    # [pokego] display pokemon
    pokego --no-title -random 1,3,6
end


source ~/.config/fish/user_variables.fish
source ~/.config/fish/abbreviations.fish
