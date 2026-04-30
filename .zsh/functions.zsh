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

backup() { /bin/cp "$1" "$1.bak.$(date +%Y%m%d)"; }

myip() {
  echo "External: $(curl -s ifconfig.me)"
  echo "Local: $(hostname -I | cut -d' ' -f1)"
}

dlog() { docker logs -f "$1"; }
dsh() { docker exec -it "$1" bash; }
port() { ss -tlnp | grep "$1"; }

compose() { docker compose -f /opt/app-data/"$1"/docker-compose.yml "${@:2}"; }

dotfilesync() {
  /bin/cp -f ~/.zshrc ~/dotfiles/.zshrc
  /bin/cp -rf ~/.zsh ~/dotfiles/
  cd ~/dotfiles
  git diff --stat
  git add .
  git commit -m "update zshrc $(date +%d-%m-%Y)"
  git push origin main
  git push github main
  cd -
}

dotfilepull() {
  cd ~/dotfiles
  git pull origin main
  /bin/cp -f ~/dotfiles/.zshrc ~/.zshrc
  /bin/cp -rf ~/dotfiles/.zsh ~/
  source ~/.zshrc
  cd -
}

chpwd() {
  if command -v eza &>/dev/null; then
    eza --icons --group-directories-first
  else
    ls -la
  fi
}
