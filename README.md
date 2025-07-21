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


##  for xremap
- run the `xremap.sh` script 
- copy paste the config files 


## for pywal
- install AUR= `python-pywal16`

