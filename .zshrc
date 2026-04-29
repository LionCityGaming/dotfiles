FUNCNEST=200
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
alias zshconfig='nano ~/.zshrc'
alias ls='eza --all --icons --group-directories-first'
alias ll='eza --long --all --icons'

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE AUTO_CD

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias fd=fdfind

chpwd() {
  if command -v eza &>/dev/null; then
    eza --icons --group-directories-first
  else
    ls -la
  fi
}
bindkey " " magic-space
alias -s yaml=fresh
alias -s yml=fresh
alias -s yaml=fresh
alias -s yml=fresh
alias -s env=fresh
alias -s yaml=fresh
alias -s yml=fresh
alias -s env=fresh
alias -s js=fresh
alias -s ts=fresh
alias -s json=fresh
alias -s toml=fresh
alias -s ini=fresh
alias -s conf=fresh
alias -s config=fresh
alias -s sh=fresh
alias -s py=fresh
alias -s md=fresh
alias -s txt=fresh
alias -s log=fresh
alias -s xml=fresh
alias -s html=fresh
alias -s css=fresh
alias -s rs=fresh
alias -s go=fresh
alias -s lua=fresh
alias -s sql=fresh

# Piping shortcuts
alias -g L="| less"
alias -g G="| grep"
alias -g F="| fzf"
alias -g H="| head"
alias -g T="| tail"
alias -g TF="| tail -f"
alias -g NUL="> /dev/null 2>&1"
alias -g NE="2>/dev/null"
alias -g AWK="| awk"
alias -g WC="| wc -l"
alias -g JQ="| jq"
alias -g Y="| yq"

# Docker specific
alias -g DL="| docker logs"
alias -g DPS="| docker ps"

alias -g L="| less"
alias -g G="| grep"
alias -g F="| fzf"
alias -g H="| head"
alias -g T="| tail"
alias -g TF="| tail -f"
alias -g NUL="> /dev/null 2>&1"
alias -g NE="2>/dev/null"
alias -g AWK="| awk"
alias -g WC="| wc -l"
alias -g JQ="| jq"
alias -g Y="| yq"
alias -g DL="| docker logs"
alias -g DPS="| docker ps"

alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker logs -f"
alias dex="docker exec -it"
alias dst="docker stats"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias pve="ssh root@10.0.0.10"
alias komo="ssh root@10.0.0.12"
alias haos="ssh root@10.0.0.13"

alias proxmox="ssh root@10.0.0.10"
alias komodo="ssh root@10.0.0.12"

mkcd() { mkdir -p "$1" && cd "$1"; }

extract() {
  case "$1" in
    *.tar.gz) tar xzf "$1" ;;
    *.tar.bz2) tar xjf "$1" ;;
    *.zip) unzip "$1" ;;
    *.gz) gunzip "$1" ;;
    *.tar) tar xf "$1" ;;
    *) echo "unknown format" ;;
  esac
}

dlog() { docker logs -f "$1"; }
dsh() { docker exec -it "$1" bash; }
port() { ss -tlnp | grep "$1"; }
alias c="clear"

alias zshrc="fresh ~/.zshrc"
alias reload="source ~/.zshrc"
alias path="echo $PATH | tr : '\n'"
alias now="date +\"%T\""
alias today="date +\"%d-%m-%Y\""
alias ip="curl -s ifconfig.me"
alias localip="hostname -I | awk '{print $1}'"
alias ports="ss -tlnp"
alias diskusage="duf"
alias top="htop"
alias cat="bat"
alias diff="diff --color=auto"

alias df="duf"
alias free="free -h"
alias update="apt update && apt upgrade -y"
alias install="apt install"
alias remove="apt remove"
alias search="apt search"
alias j="journalctl -xe"
alias jf="journalctl -fu"
alias sc="systemctl"
alias scs="systemctl status"
alias scr="systemctl restart"
alias h="history | fzf"
alias week="date +%V"
alias myaliases="alias | fzf"

alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcr="docker compose restart"
alias dcl="docker compose logs -f"
alias dcp="docker compose pull"
alias dci="docker inspect"
alias dv="docker volume ls"
alias dn="docker network ls"
alias prune="docker system prune -f"
alias pruneall="docker system prune -af --volumes"

alias meminfo="free -h"
alias cpuinfo="lscpu"
alias distro="cat /etc/os-release"
alias kernel="uname -r"
alias uptime="uptime -p"
alias reboot="echo Use: systemctl reboot"
alias shutdown="echo Use: systemctl poweroff"

alias meminfo="free -h"
alias cpuinfo="lscpu"
alias distro="cat /etc/os-release"
alias kernel="uname -r"
alias uptime="uptime -p"
alias reboot="echo Use: systemctl reboot"
alias shutdown="echo Use: systemctl poweroff"

alias pingg="ping -c 5 8.8.8.8"
alias pinglocal="ping -c 5 10.0.0.1"
alias myports="ss -tlnp"
alias connections="ss -tnp"
alias listening="ss -tlnp"
alias scan="nmap -sV"
alias tracert="traceroute"
alias dns="cat /etc/resolv.conf"
alias hosts="cat /etc/hosts"
alias biggest="du -sh * | sort -rh | head -10"
alias biggest2="ncdu"
alias space="df -h"
alias countfiles="find . -type f | wc -l"
alias hidden="ls -la | grep \"^\.\""
alias recent="find . -type f -mmin -60"
alias old="find . -type f -mtime +30"
alias pvels="pvesh get /nodes/pve/lxc --output-format=table"
alias pvevms="pvesh get /nodes/pve/qemu --output-format=table"
alias pvestorage="pvesh get /nodes/pve/storage --output-format=table"
alias pvelogs="journalctl -fu pveproxy"
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

alias pingg="ping -c 5 8.8.8.8"
alias pinglocal="ping -c 5 10.0.0.1"
alias myports="ss -tlnp"
alias connections="ss -tnp"
alias listening="ss -tlnp"
alias scan="nmap -sV"
alias tracert="traceroute"
alias dns="cat /etc/resolv.conf"
alias hosts="cat /etc/hosts"
alias biggest="du -sh * | sort -rh | head -10"
alias biggest2="ncdu"
alias space="df -h"
alias countfiles="find . -type f | wc -l"
alias hidden="ls -la | grep \"^\.\""
alias recent="find . -type f -mmin -60"
alias old="find . -type f -mtime +30"
alias pvels="pvesh get /nodes/pve/lxc --output-format=table"
alias pvevms="pvesh get /nodes/pve/qemu --output-format=table"
alias pvestorage="pvesh get /nodes/pve/storage --output-format=table"
alias pvelogs="journalctl -fu pveproxy"
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

autoload -Uz compinit && compinit
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*:descriptions" format "%F{yellow}-- %d --%f"

autoload -Uz compinit && compinit
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*:descriptions" format "%F{yellow}-- %d --%f"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
  cp ~/.zshrc ~/dotfiles/.zshrc
  cd ~/dotfiles
  git diff --stat
  git add .
  git commit -m "update zshrc $(date +%d-%m-%Y)"
  git push origin main
  git push github main
  cd -
}
