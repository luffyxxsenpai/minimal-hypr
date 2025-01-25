# STOW
- i am using STOW for dotfiles management which basically creates a symlink in our .config or other desired dir.
- clone the repo 
- make sure theres no directory present in .config which is in repo or stow will fail
- then either run the `stow-all.sh` or `stow DIRNAME` to create the symlink
- restart


##  for xremap
- `sudo gpasswd -a USER input`
- `echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/input.rules`
- `lsmod | grep uinput`
- add `uinput` to `/etc/modules-load.d/uinput.conf`
- `echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/99-input.rules`
- Then reboot the machine.

## for pywal
- install AUR= `python-pywal16`

