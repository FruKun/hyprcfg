#!/bin/sh
cd
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru
cd
paru -S --needed --noconfirm hyprland trash-cli fish chromium code vim neovim nano thunar kitty swaylock firefox man pavucontrol brightnessctl dunst grim imv noto-fonts noto-fonts-emoji noto-fonts-cjk waybar udiskie ttf-font-awesome ttf-jetbrains-mono-nerd tlp tlp-rdw acpid swayidle swaybg swappy slurp ranger playerctl pipewire network-manager-applet blueman wofi wl-clipboard cliphist xdg-desktop-portal-hyprland sway-audio-idle-inhibit-git python-requests polkit-kde-agent tela-circle-icon-theme-dracula htop btop
paru -S --needed --noconfirm catppuccin-gtk-theme-mocha catppuccin-cursors-mocha
systemctl enable bluetooth.service
systemctl enable tlp.service
sudo sh -c 'echo "HandlePowerKey=suspend" >> /etc/systemd/logind.conf'
cp -r ~/myhyprland/config/. ~/.config/
mv ~/.config/.gtkrc-2.0 ~/.gtkrc-2.0
