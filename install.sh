#!/usr/bin/env bash

echo -e "Checking for dependencies...\n"
sudo pacman -S --needed alacritty hyprland hyprlock matugen neovim rofi waybar wofi
yay -S --needed python-pywal16-git

echo -e "INstalling dotfiles."
cp -r "./alacritty" "./hypr" "./matugen" "./nvim" "./rofi" "./wal" "./waybar" "./wofi" "~/.config/"

if [[ $? -eq 0 ]]; then
    echo -e "Installed successfully!\n"
else
    echo -e "An error has occured!\n"
    exit 1
fi
