# How To Install My Configurations

Suggest you follow the instructions as listed. You can go the other way around, installing the packages and then installing the dotfiles, but that will be a bigger hassle.

**This Configuration is universal, can be installed on any distro, but only as far as the distro has the listed packages available. If not, look at the packages' webpage.**
## Cloning the GitHub Repo
### - 1- Run the following commands:
```bash
# git clone https://github.com/klejdiLOL/i3-Dotfiles-OM-personal_only-/new/main
$ cd i3-Dotfiles-OM-personal_only-
$ cp .config $HOME
```
## - Install Packages:
### -On OpenMandriva:
  **OM ROME & ROME-based Spins:**
  ```bash
  # dnf --refresh distro-sync
  # dnf install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium
  ```
  **OM ROCK & ROCK-based Spins:**
  ```bash
  # dnf --refresh distro-sync
  # dnf install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium
  ```
  ---Depending on the repos' status, installation through said command may fail. If so, run either of the below commands, depending on your architecture---
  For x86_64:
  ```bash
  # dnf install --enablerepo=cooker-x86_64 i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium
  ```
  For aarch64:
  ```bash
  # dnf install --enablerepo=cooker-aarch64 i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum dnfdrake chromium
  ```
  If neither work, **contact the support team on either the [Matrix](https://app.element.io/#/room/#openmandriva-space:matrix.org) channel or the [Forum](https://forum.openmandriva.org/)
  ### -On Ubuntu:
  ```bash
  # apt update
  # apt install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum chromium
  ```
  ### -On Debian:
  ```bash
  # apt update
  # apt install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum chromium
  ```
  ### -On Fedora:
  ```bash
  # dnf update
  # dnf install i3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum chromium
  ```
  ### -On Arch Linux:
  ```bash
  # pacman -Syui3-gaps polybar rofi kitty conky picom feh ranger vim micro nano lxappearance kvantum chromium
  ```
  ## ***Spin up that thing!***
  If using a minimal install, also install a Login Manager. Preferably, go with LightDM (general package name:``lightdm-gtk-greeter``)
  After that, do a **REBOOT**, choose ``i3`` (Not ``i3 (debug log``), and enjoy.
