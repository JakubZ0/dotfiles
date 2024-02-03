export ZSH="$HOME/.oh-my-zsh"
	# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path oh-my-zsh installation
# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.local/share/oh-my-zsh}/custom}/plugins/zsh-completions/src
plugins=(archlinux git zsh-autosuggestions zsh-syntax-highlighting clipboard)

source $ZSH/oh-my-zsh.sh

alias ls='eza -1   --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias r='ranger'
alias rg='ranger'
alias v='nvim'
alias vim='nvim'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

