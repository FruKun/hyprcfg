#!/bin/sh
cd
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
paru
cd
mkdir ~/.config/.bcp
mv ~/.config/ghostty ~/.config/.bcp
mv ~/.config/gtk-3.0 ~/.config/.bcp
mv ~/.config/gtk-4.0 ~/.config/.bcp
mv ~/.config/hypr ~/.config/.bcp
mv ~/.config/qt5ct ~/.config/.bcp
mv ~/.config/qt6ct ~/.config/.bcp
mv ~/.config/swaylock ~/.config/.bcp
mv ~/.config/swaync ~/.config/.bcp
mv ~/.config/waybar ~/.config/.bcp
mv ~/.config/wofi ~/.config/.bcp
mv ~/.config/xsettingsd ~/.config/.bcp
mv ~/.gtkrc-2.0 ~/.config/.bcp
mv ~/.config/zsh ~/.config/.bcp
mv ~/.zshrc ~/.config/.bcp
mv ~/.zshenv ~/.config/.bcp
mv ~/.config/chromium-flags.conf ~/.config/.bcp
mv ~/.config/code-flags.conf ~/.config/.bcp
mv ~/.config/electron-flags.conf ~/.config/.bcp
ln -s ~/hyprcfg/ghostty ~/.config/ghostty
ln -s ~/hyprcfg/gtk-3.0 ~/.config/gtk-3.0
ln -s ~/hyprcfg/gtk-4.0 ~/.config/gtk-4.0
ln -s ~/hyprcfg/hypr ~/.config/hypr
ln -s ~/hyprcfg/qt5ct ~/.config/qt5ct
ln -s ~/hyprcfg/qt6ct ~/.config/qt6ct
ln -s ~/hyprcfg/swaylock ~/.config/swaylock
ln -s ~/hyprcfg/swaync ~/.config/swaync
ln -s ~/hyprcfg/waybar ~/.config/waybar
ln -s ~/hyprcfg/wofi ~/.config/wofi
ln -s ~/hyprcfg/xsettingsd ~/.config/xsettingsd
ln -s ~/hyprcfg/.gtkrc-2.0 ~/.gtkrc-2.0
mkdir -p ~/.config/zsh/plugins
ln -s ~/hyprcfg/zsh/zsh.d ~/.config/zsh
ln -s ~/hyprcfg/zsh/.zshrc ~/.config/zsh
ln -s ~/hyprcfg/.zshenv ~/.zshenv
ln -s ~/hyprcfg/chromium-flags.conf ~/.config/chromium-flags.conf
ln -s ~/hyprcfg/code-flags.conf ~/.config/code-flags.conf
ln -s ~/hyprcfg/electron-flags.conf ~/.config/electron-flags.conf
paru -S --needed --noconfirm - < ~/hyprcfg/package-list
paru -S --needed --noconfirm - < ~/hyprcfg/package-list-aur
systemctl enable bluetooth.service
systemctl enable tlp.service
sudo sh -c 'echo "HandlePowerKey=suspend" >> /etc/systemd/logind.conf'
chsh -s /usr/bin/zsh
