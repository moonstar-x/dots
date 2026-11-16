#!/bin/bash

set -euo pipefail

cmd="$1"
shift

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_ROOT="$(realpath "$SCRIPTS_DIR/..")"
CONFIG_DIR="$DOTFILES_ROOT/config"

MAC_XDG_CONFIG_HOME="$HOME/Library/Application Support"
LINUX_XDG_CONFIG_HOME="$HOME/.config"
LOCAL_SHARE="$HOME/.local/share"

# Functions

atuin() {
  echo "Linking config for atuin"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/atuin/themes"
  rm -rf "$LINUX_XDG_CONFIG_HOME/atuin/config.toml" "$LINUX_XDG_CONFIG_HOME/atuin/themes"
  ln -sf "$CONFIG_DIR/atuin/config.toml" "$LINUX_XDG_CONFIG_HOME/atuin/config.toml"
  ln -sf "$CONFIG_DIR/atuin/themes" "$LINUX_XDG_CONFIG_HOME/atuin/themes"
}

bat() {
  echo "Linking config for bat"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/bat/themes"
  rm -rf "$LINUX_XDG_CONFIG_HOME/bat/config" "$LINUX_XDG_CONFIG_HOME/bat/themes"
  ln -sf "$CONFIG_DIR/bat/config" "$LINUX_XDG_CONFIG_HOME/bat/config"
  ln -sf "$CONFIG_DIR/bat/themes" "$LINUX_XDG_CONFIG_HOME/bat/themes"
}

btop() {
  echo "Linking config for btop"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/btop/themes"
  rm -rf "$LINUX_XDG_CONFIG_HOME/btop/btop.conf" "$LINUX_XDG_CONFIG_HOME/btop/themes"
  ln -sf "$CONFIG_DIR/btop/btop.conf" "$LINUX_XDG_CONFIG_HOME/btop/btop.conf"
  ln -sf "$CONFIG_DIR/btop/themes" "$LINUX_XDG_CONFIG_HOME/btop/themes"
}

eza() {
  echo "Linking config for eza"
  mkdir -p "$MAC_XDG_CONFIG_HOME/eza"
  ln -sf "$CONFIG_DIR/eza/theme.yml" "$MAC_XDG_CONFIG_HOME/eza/theme.yml"
}

fastfetch() {
  echo "Linking config for fastfetch"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/fastfetch"
  ln -sf "$CONFIG_DIR/fastfetch/config.jsonc" "$LINUX_XDG_CONFIG_HOME/fastfetch/config.jsonc"
}

gh-dash() {
  echo "Linking config for gh-dash"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/gh-dash"
  ln -sf "$CONFIG_DIR/gh-dash/config.yml" "$LINUX_XDG_CONFIG_HOME/gh-dash/config.yml"
}

ghostty() {
  echo "Linking config for ghostty"
  mkdir -p "$MAC_XDG_CONFIG_HOME/com.mitchellh.ghostty"
  ln -sf "$CONFIG_DIR/ghostty/config" "$MAC_XDG_CONFIG_HOME/com.mitchellh.ghostty/config"
}

git() {
  echo "Linking config for git"
  ln -sf "$CONFIG_DIR/git/.gitconfig" "$HOME/.gitconfig"
  ln -sf "$CONFIG_DIR/git/.gitignore_global" "$HOME/.gitignore_global"
}

jellyfin-tui() {
  echo "Linking config for jellyfin-tui"
  mkdir -p "$MAC_XDG_CONFIG_HOME/jellyfin-tui"
  ln -sf "$CONFIG_DIR/jellyfin-tui/config.yaml" "$MAC_XDG_CONFIG_HOME/jellyfin-tui/config.yaml"
}

lazydocker() {
  echo "Linking config for lazydocker"
  mkdir -p "$MAC_XDG_CONFIG_HOME/lazydocker"
  ln -sf "$CONFIG_DIR/lazydocker/config.yml" "$MAC_XDG_CONFIG_HOME/lazydocker/config.yml"
}

lazygit() {
  echo "Linking config for lazygit"
  mkdir -p "$MAC_XDG_CONFIG_HOME/lazygit"
  ln -sf "$CONFIG_DIR/lazygit/config.yml" "$MAC_XDG_CONFIG_HOME/lazygit/config.yml"
}

posting() {
  echo "Linking config for posting"
  mkdir -p "$LOCAL_SHARE/posting/themes" "$LINUX_XDG_CONFIG_HOME/posting"
  rm -rf "$LOCAL_SHARE/posting/themes"
  ln -sf "$CONFIG_DIR/posting/config.yaml" "$LINUX_XDG_CONFIG_HOME/posting/config.yaml"
  ln -sf "$CONFIG_DIR/posting/themes" "$LOCAL_SHARE/posting/themes"
}

starship() {
  echo "Linking config for starship"
  ln -sf "$CONFIG_DIR/starship/config.toml" "$LINUX_XDG_CONFIG_HOME/starship.toml"
}

sublime-text() {
  echo "Linking config for sublime-text"
  mkdir -p "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User"
  ln -sf "$CONFIG_DIR/sublime-text/Preferences.sublime-settings" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Preferences.sublime-settings"
  ln -sf "$CONFIG_DIR/sublime-text/Default.sublime-keymap" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Default.sublime-keymap"
  ln -sf "$CONFIG_DIR/sublime-text/Catppuccin-Macchiato.sublime-color-scheme" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Catppuccin-Macchiato.sublime-color-scheme"
}

superfile() {
  echo "Linking config for superfile"
  mkdir -p "$MAC_XDG_CONFIG_HOME/superfile"
  ln -sf "$CONFIG_DIR/superfile/config.toml" "$MAC_XDG_CONFIG_HOME/superfile/config.toml"
  ln -sf "$CONFIG_DIR/superfile/hotkeys.toml" "$MAC_XDG_CONFIG_HOME/superfile/hotkeys.toml"
}

tmux() {
  echo "Linking config for tmux"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/tmux"
  ln -sf "$CONFIG_DIR/tmux/tmux.conf" "$LINUX_XDG_CONFIG_HOME/tmux/tmux.conf"
}

vscodium() {
  echo "Linking config for VSCodium"
  mkdir -p "$MAC_XDG_CONFIG_HOME/VSCodium/User"
  ln -sf "$CONFIG_DIR/vscodium/settings.json" "$MAC_XDG_CONFIG_HOME/VSCodium/User/settings.json"
}

xcode() {
  echo "Linking config for Xcode"
  mkdir -p "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
  ln -sf "$CONFIG_DIR/xcode/Catppuccin-Macchiato.xccolortheme" "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes/Catppuccin-Macchiato.xccolortheme"
}

zsh() {
  echo "Linking config for zsh"
  ln -sf "$CONFIG_DIR/zsh/.zprofile" "$HOME/.zprofile"
  ln -sf "$CONFIG_DIR/zsh/.zshrc" "$HOME/.zshrc"
  ln -sfn "$CONFIG_DIR/zsh/.zsh" "$HOME/.zsh"
}

zsh-fsh() {
  echo "Linking config for zsh -> fast-syntax-highlighting"
  mkdir -p "$LINUX_XDG_CONFIG_HOME/fsh"
  ln -sf "$CONFIG_DIR/zsh/plugins/fsh/catppuccin-macchiato.ini" "$LINUX_XDG_CONFIG_HOME/fsh/catppuccin-macchiato.ini"
}

# Runner

if declare -f "$cmd" > /dev/null; then
  "$cmd"
else
  echo "Unknown command: $cmd"
fi
