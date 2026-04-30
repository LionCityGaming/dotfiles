# dotfiles

Personal zsh configuration for my homelab setup (Proxmox + Komodo).

## Structure

```
~/.zshrc              # Main entry point - sources everything
~/.zsh/
  aliases.zsh         # All aliases (Docker, git, system, network, etc.)
  functions.zsh       # Shell functions (mkcd, extract, dotfilesync, etc.)
  options.zsh         # zsh options, completion, keybindings
  exports.zsh         # Environment variables
```

## What's included

- 70+ aliases for Docker, git, navigation, system management and networking
- Global aliases for piping (`G`, `F`, `JQ`, etc.)
- Suffix aliases to open files directly in Fresh editor
- Shell functions (`mkcd`, `extract`, `compose`, `backup`, `myip`, etc.)
- zsh options for better history, autocomplete and keybindings
- Syntax highlighting, autosuggestions, and you-should-use
- Atuin for enhanced shell history search
- Yazi terminal file manager (`files`)
- chpwd hook to list directory contents on cd
- fastfetch on shell startup
- Powerlevel10k prompt

## Tools required

- zsh
- eza
- bat
- fzf
- fd-find
- ripgrep
- zoxide
- atuin
- yazi
- zsh-syntax-highlighting
- zsh-autosuggestions
- zsh-you-should-use
- htop
- duf
- ncdu
- tldr
- lazydocker
- lazygit
- mtr
- fastfetch
- powerlevel10k

## Installation

```zsh
# Clone the repo
git clone ssh://git@10.0.0.12:2222/muizz/dotfiles.git ~/dotfiles

# Create zsh config directory
mkdir -p ~/.zsh

# Copy files
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.zsh/* ~/.zsh/

# Install required tools (Debian/Ubuntu)
apt install zsh git fzf fd-find ripgrep zoxide \
  zsh-syntax-highlighting zsh-autosuggestions htop duf ncdu mtr

# Install tools not in apt
curl -Lo eza.tar.gz https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz
tar xf eza.tar.gz && install eza /usr/local/bin/ && rm eza eza.tar.gz
ln -s /usr/bin/batcat /usr/local/bin/bat 2>/dev/null

# Install atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# Install yazi (requires Rust)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --force yazi-build
cargo install --force yazi-fm yazi-cli

# Install fastfetch
curl -Lo fastfetch.deb https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-linux-amd64.deb
dpkg -i fastfetch.deb && rm fastfetch.deb

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# Install zsh-you-should-use
git clone https://github.com/MichaelAquilina/zsh-you-should-use ~/you-should-use

# Set zsh as default shell
chsh -s /bin/zsh

# Reload
exec zsh
```

## Machines

| Machine | IP | Role |
|---------|-----|------|
| Proxmox | 10.0.0.10 | Source of truth — only machine that can `dotfilesync` |
| Komodo | 10.0.0.12 | Docker host — `dotfilepull` only |

## Workflow

Edit on Proxmox → `dotfilesync` → `dotfilepull` on Komodo

- `dotfilesync` — copies `.zshrc` + `.zsh/` to repo, commits and pushes to Gitea + GitHub, reloads shell. Only runs on Proxmox.
- `dotfilepull` — pulls latest from Gitea, copies `.zshrc` + `.zsh/` to home, reloads shell. Shows warning on Proxmox.
- Both commands clear the screen and `exec zsh` automatically after completing.

## Remotes

- **Gitea** (primary): `ssh://git@10.0.0.12:2222/muizz/dotfiles.git`
- **GitHub** (mirror): `https://github.com/LionCityGaming/dotfiles`

Gitea has a push mirror configured to auto-sync to GitHub.