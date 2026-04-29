# dotfiles

Personal zsh configuration for my homelab setup.

## What's included

- 50+ aliases for Docker, git, navigation, and system management
- Global aliases for piping (G, F, JQ, TF, etc.)
- Suffix aliases to open files directly in Fresh editor
- Useful shell functions (mkcd, extract, dlog, dsh, dotfilesync, etc.)
- zsh options for better history and autocomplete
- Syntax highlighting and autosuggestions
- chpwd hook to list directory contents on cd

## Tools required

- zsh
- eza
- bat
- fzf
- fd-find
- ripgrep
- zoxide
- zsh-syntax-highlighting
- zsh-autosuggestions
- htop
- duf
- ncdu
- tldr
- lazydocker
- lazygit
- mtr

## Installation

1. Clone the repo
2. Copy `.zshrc` to `~/.zshrc`
3. Install required tools
4. Reload shell: `source ~/.zshrc`

## Sync

Run `dotfilesync` to push changes to both Gitea and GitHub.
