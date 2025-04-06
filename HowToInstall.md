# How To Install My Configurations

Suggest you follow the instructions as listed. You can go the other way around, installing the packages and then installing the dotfiles, but that will be a bigger hassle.
## Cloning the GitHub Repo
### - 1- Run the following commands:
```bash
# git clone https://github.com/klejdiLOL/i3-Dotfiles-OM-personal_only-/new/main
$ cd i3-Dotfiles-OM-personal_only-
$ cp -r .config $HOME
$ cp -r .local $HOME
```
## - Install Packages:
### -On OpenMandriva:
  **OM ROME & ROME-based Spins:**
  ```bash
  # dnf --refresh distro-sync
  # dnf install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium fonts-ttf-nerd-jetbrains-mono
  ```
  **OM ROCK & ROCK-based Spins:**
  ```bash
  # dnf --refresh distro-sync
  # dnf install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium fonts-ttf-nerd-jetbrains-mono
  ```
  ---Depending on the repos' status, installation through said command may fail. If so, run either of the below commands, depending on your architecture---
  For x86_64:
  ```bash
  # dnf install --enablerepo=cooker-x86_64 i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium fonts-ttf-nerd-jetbrains-mono
  ```
  For aarch64:
  ```bash
  # dnf install --enablerepo=cooker-aarch64 i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium fonts-ttf-nerd-jetbrains-mono
  ```
  If neither work, **contact the support team on either the [Matrix](https://app.element.io/#/room/#openmandriva-space:matrix.org) channel or the [Forum](https://forum.openmandriva.org/)**
## Make the launch files executable
### The Polybar scripts:
```bash
$ cd $HOME/.config/polybar/
# chmod -x launch.sh
$ cd scripts
# chmod -x launcher.sh
# chmod -x powermenu.sh
```
### The Rofi scripts:
```bash
$ cd $HOME/.config/rofi/
# chmod -x launcher.sh
# chmod -x powermenu.sh
```
  ## ***Spin up that thing!***
  If using a minimal install, also install a Login Manager. Preferably, go with LightDM (general package name:``lightdm-gtk-greeter``)
  After that, do a **REBOOT**, choose ``i3`` (Not ``i3 (debug log``), and enjoy.
