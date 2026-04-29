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
- Global aliases for piping (`G`, `F`, `JQ`, `TF`, etc.)
- Suffix aliases to open files directly in Fresh editor
- Shell functions (`mkcd`, `extract`, `dlog`, `dsh`, `compose`, `backup`, etc.)
- zsh options for better history, autocomplete and keybindings
- Syntax highlighting and autosuggestions
- Atuin for enhanced shell history search
- chpwd hook to list directory contents on cd
- fastfetch on shell startup

## Tools required

- zsh
- eza
- bat
- fzf
- fd-find
- ripgrep
- zoxide
- atuin
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
- superfile (`spf`)
- powerlevel10k

## Installation

```zsh
# Clone the repo
git clone ssh://git@<gitea>:2222/muizz/dotfiles.git ~/dotfiles

# Create zsh config directory
mkdir -p ~/.zsh

# Copy files
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.zsh/* ~/.zsh/

# Install required tools (Debian/Ubuntu)
apt install zsh git eza bat fzf fd-find ripgrep zoxide \
  zsh-syntax-highlighting zsh-autosuggestions htop duf ncdu mtr

# Install atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

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
| Proxmox | 10.0.0.10 | Source of truth |
| Komodo | 10.0.0.12 | Docker host |

## Workflow

Edit on Proxmox → `dotfilesync` → `dotfilepull` on Komodo

- `dotfilesync` — copies zshrc + .zsh/ to repo, commits and pushes to Gitea + GitHub
- `dotfilepull` — pulls latest from Gitea, copies to ~/.zshrc and ~/.zsh/