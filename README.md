# dotfiles

Personal dotfiles managed with GNU Stow.

## Script Install

```sh
chmod +x install.sh
./install.sh
```

## Manual Install

User config packages target `$HOME` by default:

```sh
stow fuzzel ghostty hypr mako waybar
```

System-level packages target `/` and need root privileges:

```sh
sudo stow -t / sddm
```
