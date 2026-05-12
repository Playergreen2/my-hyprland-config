#!/bin/bash

clear

echo "Hyprland config von leo wird installiert"
echo

set -e

DOTFILES_DIR="$HOME/.local/share/dotfiles"
REPO_URL="https://github.com/Playergreen2/my-hyprland-config.git"


# Check if dotfiles directory already exists
if [ -d "$DOTFILES_DIR" ]; then
    echo "FEHLER: $DOTFILES_DIR exextiert bereits"
    echo "Wenn du es neuinstallieren möchtest dann lösche das backup oder reinstalliere es:"
    echo "  mv ~/.local/share/dotfiles ~/.local/share/dotfiles.backup"
    exit 1
fi

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git ist nicht installiert. Git wird heruntergeladen"
    sudo pacman -S --noconfirm git
    echo "Git ist installiert"
fi

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Create .local/share/dotfiles directory
mkdir -p "$HOME/.local/share/dotfiles"

# Clone the dotfiles repository
echo "Klone Dotfile..."
git clone "$REPO_URL" "$DOTFILES_DIR"

echo
echo "Fertig installiert!"
echo "Starte nun denn installer..."
echo

# Run the installer
bash "$DOTFILES_DIR/install/install"
