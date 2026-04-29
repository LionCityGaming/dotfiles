typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
FUNCNEST=1000
export TERM=xterm-256color

fastfetch
# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source config files
source ~/.zsh/exports.zsh
source ~/.zsh/options.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

# Plugins
source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/you-should-use/you-should-use.plugin.zsh

# Tools
eval "$(zoxide init zsh)"
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

