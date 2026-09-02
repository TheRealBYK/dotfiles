#!/usr/bin/env bash

echo -e "Checking for dependencies...\n"
sudo pacman -S --needed alacritty hyprland hyprlock neovim rofi waybar wofi zsh
yay -S --needed python-pywal16-git matugen-bin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

echo -e "Installing dotfiles."
cp -r "./alacritty" "./hypr" "./matugen" "./nvim" "./rofi" "./wal" "./waybar" "./wofi" "$HOME/.config/"
if [[ $? -eq 0 ]]; then
    echo -e "Installed successfully!\n"
else
    echo -e "An error has occured!\n"
    exit 1
fi

echo -e "[1/2] Installing shell dotfiles."
cp -r "./powerlevel10k" "$HOME/Documents/"

if [[ $? -eq 0 ]]; then
    echo -e "[1/2] Installed successfully!\n"
else
    echo -e "[1/2] An error has occured!\n"
    exit 1
fi

echo -e "[2/2] Installing shell dotfiles."
cp -r "./.zshrc" "./.p10k.zsh" "$HOME/"

if [[ $? -eq 0 ]]; then
    echo -e "[2/2] Installed successfully!\n"
else
    echo -e "[2/2] An error has occured!\n"
    exit 1
fi

echo -e "Installing shell themes.\n"
cp -r "./themes" "$HOME/.oh-my-zsh/custom/"

if [[ $? -eq 0 ]]; then
    echo -e "Installed successfully!\n"
else
    echo -e "An error has occured!\n"
    exit 1
fi
