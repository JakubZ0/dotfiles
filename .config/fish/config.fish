set -U fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.config/fish/abbr.fish
source ~/.config/fish/env.fish
zoxide init fish | source

[ -f /usr/share/autojump/autojump.fish ]
source /usr/share/autojump/autojump.fish

if type -q vivid
    set -xg LS_COLORS (vivid generate catppuccin-mocha)
end

fish_add_path /home/jakub/.spicetify
