#!/bin/bash
#
# Sway Auto Rice - Birmingham Theme
# Always check the contents of a script before running it.

set -e

REPO_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
HOME_DIR="$HOME"

mkdir -p "$HOME_DIR/.sway"
mkdir -p "$HOME_DIR/.config"

cp -a "$REPO_DIR/.sway/." "$HOME_DIR/.sway/"
cp -a "$REPO_DIR/.config/." "$HOME_DIR/.config/"

mkdir -p ~/.local/share/fonts/JetBrainsMonoNerdFont
cd ~/.local/share/fonts/JetBrainsMonoNerdFont

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip -o JetBrainsMono.zip
rm JetBrainsMono.zip

fc-cache -fv

echo "Installed Birmingham dotfiles successfully"
echo "Installing Neovim"
sudo dnf install -y neovim
echo "Installing Helium Browser"
sudo dnf copr enable imput/helium
sudo dnf install -y helium-bin
