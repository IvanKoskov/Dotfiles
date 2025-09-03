# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export PATH=$PATH:/Users/joseanmartinez/.spicetify

export PATH="$HOME/.rbenv/shims:$PATH"

export BAT_THEME=tokyonight_night

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

alias python="python3"
PATH=/Users/joseanmartinez/.rbenv/shims:/Users/joseanmartinez/.rbenv/shims:/Users/joseanmartinez/.nvm/versions/node/v18.18.2/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/joseanmartinez/.ebcli-virtual-env/executables:/Users/joseanmartinez/.spicetify:/Users/joseanmartinez/.spicetify:~/Library/Python/3.12/bin

# --- Yazi Setup ---
export EDITOR="vim"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

PYTHON=$(python3 -m site --user-base)
export PATH="$PYTHON/bin:$PATH"

# Created by `pipx` on 2025-08-31 07:46:28
export PATH="$PATH:/Users/evan/.local/bin"
export PATH="$PATH:/Users/evan/Shellman/bin"

alias cat='bat'
