fish_add_path $XDG_BIN_HOME
fish_add_path $XDG_BIN_HOME/color-scripts/
fish_add_path $GOPATH/bin
fish_add_path $CARGO_HOME/bin
fish_add_path $XDG_SCRIPT_HOME
set -xg TERMINAL kitty
set -x BAT_THEME Catppuccin-mocha
set -xg EDITOR nvim
set -xg VISUAL $EDITOR
set -xg SUDO_EDITOR $EDITOR


set -gx PATH ~/.local/bin $PATH
set -g async_prompt_functions _pure_prompt_git

set -x TERM screen-256color
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_CACHE_HOME $HOME/.cache
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_STATE_HOME $HOME/.local/state
set -xg XDG_BIN_HOME $HOME/.local/bin
set -xg STARSHIP_CONFIG $HOME/.config/starship/starship.toml
set -xg ZSH $XDG_DATA_HOME/oh-my-zsh

if type -q vivid
    set -xg LS_COLORS (vivid generate catppuccin-macchiato)
end
set -xg BAT_THEME Catppuccin-macchiato
set -xg STARSHIP_LOG error
