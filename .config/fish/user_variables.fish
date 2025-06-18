# XDG Directories
set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_CACHE_HOME $HOME/.cache
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_STATE_HOME $HOME/.local/state
set -xg XDG_BIN_HOME $HOME/.local/bin
set -xg XDG_SCRIPT_HOME $HOME/.local/script

# Respect XDG Specification
set -xg CONAN_USER_HOME $XDG_CONFIG_HOME
set -xg GOPATH $XDG_DATA_HOME/go
set -xg GOMODCACHE $XDG_CACHE_HOME/go/mod
set -xg RUSTUP_HOME $XDG_DATA_HOME/rustup
set -xg CARGO_HOME $XDG_DATA_HOME/cargo
set -xg LEIN_HOME $XDG_DATA_HOME/lein
set -xg NUGET_PACKAGES $XDG_CACHE_HOME/NuGetPackages
set -xg ANDROID_USER_HOME $XDG_DATA_HOME/android
set -xg NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -xg DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -xg SQLITE_HISTORY $XDG_DATA_HOME/sqlite_history
set -xg GRADLE_USER_HOME $XDG_DATA_HOME/gradle
set -xg RIPGREP_CONFIG_PATH $HOME/.config/rg/.ripgreprc
set -xg STARSHIP_CONFIG $HOME/.config/starship/starship.toml
set -xg ANSIBLE_HOME $XDG_CONFIG_HOME/ansible
set -xg FFMPEG_DATADIR $XDG_CONFIG_HOME/ffmpeg
set -xg MYSQL_HISTFILE $XDG_DATA_HOME/mysql_history
set -xg OMNISHARPHOME $XDG_CONFIG_HOME/omnisharp
set -xg PYENV_ROOT $XDG_DATA_HOME/pyenv
set -xg WORKON_HOME $XDG_DATA_HOME/virtualenvs
set -xg XINITRC $XDG_CONFIG_HOME/X11/xinitrcexport
set -xg XSERVERRC $XDG_CONFIG_HOME/X11/xserverrc
set -xg HISTFILE $XDG_STATE_HOME/bash/history
set -xg ZSH $XDG_DATA_HOME/oh-my-zsh
set -xg WINEPREFIX $XDG_DATA_HOME/wine
set -xg NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -xg GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -xg W3M_DIR $XDG_DATA_HOME/w3m
set -xg DOTNET_CLI_HOME $XDG_DATA_HOME/dotnet
set -xg PNPM_HOME $XDG_DATA_HOME/pnpm

# Path
fish_add_path $XDG_BIN_HOME
fish_add_path $XDG_BIN_HOME/color-scripts/
fish_add_path $GOPATH/bin
fish_add_path $CARGO_HOME/bin
fish_add_path $XDG_SCRIPT_HOME
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/bin
fish_add_path /usr/sbin
fish_add_path /bin
fish_add_path /sbin
fish_add_path /usr/lib/rustup/bin
fish_add_path /usr/lib/go/bin
fish_add_path $HOME/.dotnet/tools
fish_add_path $XDG_DATA_HOME/bob/nvim-bin
fish_add_path $XDG_DATA_HOME/npm/bin
fish_add_path $XDG_DATA_HOME/nvim/mason/bin
fish_add_path $HOME/.yarn/bin
fish_add_path $XDG_DATA_HOME/pnpm

# Editor
set -xg EDITOR nvim
set -xg VISUAL $EDITOR
set -xg SUDO_EDITOR $EDITOR

# GPG/LANG
set -xg GPG_TTY (tty)

# FZF
set -xg FZF_DEFAULT_COMMAND fd
set -xg FZF_DEFAULT_OPTS "--height=90% --layout=reverse --info=inline --border rounded --margin=1 --padding=1 \
--color=bg+:#363a4f,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--bind 'ctrl-u:preview-half-page-up'
--bind 'ctrl-d:preview-half-page-down'
--bind 'ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)'"
set -xg fzf_preview_dir_cmd eza --long --header --icons --all --color=always --group-directories-first --hyperlink
set -xg fzf_fd_opts --hidden --color=always
set -xg _ZO_FZF_OPTS $FZF_DEFAULT_OPTS '--preview "{$fzf_preview_dir_cmd} {2}"'

# Other
if type -q vivid
    set -xg LS_COLORS (vivid generate catppuccin-macchiato)
end
set -xg STARSHIP_LOG error

[manager]
cwd = { fg = "#94e2d5" }

# Hovered
hovered         = { fg = "#1e1e2e", bg = "#89b4fa" }
preview_hovered = { underline = true }

# Find
find_keyword  = { fg = "#f9e2af", italic = true }
find_position = { fg = "#f5c2e7", bg = "reset", italic = true }

# Marker
marker_copied   = { fg = "#a6e3a1", bg = "#a6e3a1" }
marker_cut      = { fg = "#f38ba8", bg = "#f38ba8" }
marker_selected = { fg = "#89b4fa", bg = "#89b4fa" }

# Tab
tab_active   = { fg = "#1e1e2e", bg = "#cdd6f4" }
tab_inactive = { fg = "#cdd6f4", bg = "#45475a" }
tab_width    = 1

# Count
count_copied   = { fg = "#1e1e2e", bg = "#a6e3a1" }
count_cut      = { fg = "#1e1e2e", bg = "#f38ba8" }
count_selected = { fg = "#1e1e2e", bg = "#89b4fa" }

# Border
border_symbol = "│"
border_style  = { fg = "#7f849c" }

# Highlighting
syntect_theme = "~/.config/yazi/Catppuccin-mocha.tmTheme"

[status]
separator_open  = ""
separator_close = ""
separator_style = { fg = "#45475a", bg = "#45475a" }

# Mode
mode_normal = { fg = "#1e1e2e", bg = "#89b4fa", bold = true }
mode_select = { fg = "#1e1e2e", bg = "#a6e3a1", bold = true }
mode_unset  = { fg = "#1e1e2e", bg = "#f2cdcd", bold = true }

# Progress
progress_label  = { fg = "#ffffff", bold = true }
progress_normal = { fg = "#89b4fa", bg = "#45475a" }
progress_error  = { fg = "#f38ba8", bg = "#45475a" }

# Permissions
permissions_t = { fg = "#89b4fa" }
permissions_r = { fg = "#f9e2af" }
permissions_w = { fg = "#f38ba8" }
permissions_x = { fg = "#a6e3a1" }
permissions_s = { fg = "#7f849c" }

[input]
border   = { fg = "#89b4fa" }
title    = {}
value    = {}
selected = { reversed = true }

[select]
border   = { fg = "#89b4fa" }
active   = { fg = "#f5c2e7" }
inactive = {}

[tasks]
border  = { fg = "#89b4fa" }
title   = {}
hovered = { underline = true }

[which]
mask            = { bg = "#313244" }
cand            = { fg = "#94e2d5" }
rest            = { fg = "#9399b2" }
desc            = { fg = "#f5c2e7" }
separator       = "  "
separator_style = { fg = "#585b70" }

[help]
on      = { fg = "#f5c2e7" }
exec    = { fg = "#94e2d5" }
desc    = { fg = "#9399b2" }
hovered = { bg = "#585b70", bold = true }
footer  = { fg = "#45475a", bg = "#cdd6f4" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "#94e2d5" },

	# Videos
	{ mime = "video/*", fg = "#f9e2af" },
	{ mime = "audio/*", fg = "#f9e2af" },

	# Archives
	{ mime = "application/zip",             fg = "#f5c2e7" },
	{ mime = "application/gzip",            fg = "#f5c2e7" },
	{ mime = "application/x-tar",           fg = "#f5c2e7" },
	{ mime = "application/x-bzip",          fg = "#f5c2e7" },
	{ mime = "application/x-bzip2",         fg = "#f5c2e7" },
	{ mime = "application/x-7z-compressed", fg = "#f5c2e7" },
	{ mime = "application/x-rar",           fg = "#f5c2e7" },

	# Fallback
	{ name = "*", fg = "#cdd6f4" },
	{ name = "*/", fg = "#89b4fa" }
]
