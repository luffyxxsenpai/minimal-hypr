# APPLICATIONS
- pacman - `sudo pacman -S stow nwg-look qt5-wayland qt6-wayland qt5ct telegram-desktop nautilus neovim librewolf authenticator kvantum waybar wl-clipboard yad pavucontrol kitty brightnessctl network-manager-applet bitwarden discord fastfetch obs-studio qbittorrent swaync python-pywal wofi starship hyprland hyprlock hyprcursor hypridle swww grim slurp xdg-desktop-portal-hyprland udiskie cliphist nwg-drawer brave-bin nwg-drawer brave-bin opentabletdriver`
- AUR - `qt6ct-kde waybar-module-pacman-updates xremap-x11-bin grub-customizer` 

# STOW
- i am using STOW for dotfiles management which basically creates a symlink in our .config or other desired dir.
- clone the repo 
- make sure theres no directory present in .config which is in repo or stow will fail
- then either run the `stow-all.sh` or `stow DIRNAME` to create the symlink
- restart

```bash
sudo pacman -S stow
mkdir ~/.dotfiles
git clone https://github.com/luffyxxsenpai/minimal-hypr.git ~/.dotfiles
rm ~/.config/starship.toml
./stow-all.sh
```

## NERD FONT
- use the nerd-font installer to install nerd fonts 
- `./nerdfont.sh`

##  for xremap
- run the `xremap.sh` script 
- copy paste the config files 


## for pywal
- install AUR= `python-pywal16`

