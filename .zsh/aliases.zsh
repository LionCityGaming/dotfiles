# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# File listing
alias ls='eza --all --icons --group-directories-first'
alias ll='eza --long --all --icons'
alias hidden='eza -la --icons | grep "^\."'

# File tools
alias cat="bat"
alias diff="diff --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias fd=fdfind
alias files="yazi"

# Suffix aliases (open in fresh)
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

# Global aliases (piping)
alias -g G="| grep"
alias -g F="| fzf"
alias -g L="| less"
alias -g H="| head"
alias -g T="| tail"
alias -g TF="| tail -f"
alias -g JQ="| jq"
alias -g NUL="> /dev/null 2>&1"

# Docker containers
alias dps="docker ps"
alias dpa="docker ps -a"
alias dlog="docker logs -f"
alias dexec="docker exec -it"
alias dstats="docker stats"
alias dinspect="docker inspect"
alias dvols="docker volume ls"
alias dnets="docker network ls"
alias prune="docker system prune -f"
alias pruneall="docker system prune -af --volumes"

# Docker compose
alias dc="docker compose"
alias dcup="docker compose up -d"
alias dcdown="docker compose down"
alias dcrestart="docker compose restart"
alias dclogs="docker compose logs -f"
alias dcpull="docker compose pull"

# System
alias top="htop"
alias df="duf"
alias free="free -h"
alias cpuinfo="lscpu"
alias distro="cat /etc/os-release"
alias kernel="uname -r"
alias uptime="uptime -p"
alias reboot="echo Use: systemctl reboot"
alias shutdown="echo Use: systemctl poweroff"

# Package management
alias update="apt update && apt upgrade -y"
alias install="apt install"
alias remove="apt remove"
alias search="apt search"

# Systemd
alias logs="journalctl -xe"
alias logsf="journalctl -fu"
alias status="systemctl status"
alias restart="systemctl restart"

# Network
alias localip='hostname -I | cut -d" " -f1'
alias ports="ss -tlnp"
alias connections="ss -tnp"
alias ping8="ping -c 5 8.8.8.8"
alias pingrouter="ping -c 5 10.0.0.1"
alias scan="nmap -sV"
alias dns="cat /etc/resolv.conf"
alias hosts="cat /etc/hosts"

# File searching
alias biggest="du -sh * | sort -rh | head -10"
alias diskuse="ncdu"
alias countfiles="find . -type f | wc -l"
alias recent="find . -type f -mmin -60"
alias old="find . -type f -mtime +30"

# Git
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias glog="git log --oneline --graph --decorate"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

# SSH
alias pve="ssh root@10.0.0.10"
alias proxmox="ssh root@10.0.0.10"
alias komo="ssh root@10.0.0.12"
alias komodo="ssh root@10.0.0.12"
alias haos="ssh root@10.0.0.13 -p 22222"

# Proxmox
alias pvels="pvesh get /nodes/pve/lxc --output-format=table"
alias pvevms="pvesh get /nodes/pve/qemu --output-format=table"
alias pvestorage="pvesh get /nodes/pve/storage --output-format=table"
alias pvelogs="journalctl -fu pveproxy"

# Misc
alias c="clear"
alias zshrc="fresh ~/.zshrc"
alias reload="source ~/.zshrc"
alias now="date +\"%T\""
alias today="date +\"%d-%m-%Y\""
alias week="date +%V"
alias h="history | fzf"
alias myaliases="alias | fzf"
alias path='echo $PATH | tr ":" "\n"'
