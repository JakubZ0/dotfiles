alias ls "lsd"
abbr l "ls -l"
abbr la "ls -a"
abbr lla "ls -la"
abbr lt "ls --tree"
abbr .. "cd .."
abbr ... "cd ../.."
abbr mkdir "mkdir -p"
abbr fastfetch "fastfetch --config ~/.config/fish/fastfetch/config.jsonc"
abbr pacman "yes|sudo pacman -S"
abbr p "paru"
abbr ps "yes|paru -S"
abbr yazi "print 'use fm instead'"


starship init fish | source
zoxide init fish | source
