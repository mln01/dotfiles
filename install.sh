#!/bin/sh
set -eu

cd "$(dirname "$0")"

USER_PACKAGES="fuzzel ghostty helix hypr mako waybar yazi"
SDDM_THEME="catppuccin-frappe-blue"
SDDM_THEME_DEST="/usr/share/sddm/themes/$SDDM_THEME"
SDDM_CONF_DEST="/etc/sddm.conf"

stow $USER_PACKAGES

sudo install -d -o root -g root -m 755 /usr/share/sddm/themes

if [ -L "$SDDM_THEME_DEST" ]; then
  sudo rm "$SDDM_THEME_DEST"
fi

if [ -L "$SDDM_CONF_DEST" ]; then
  sudo rm "$SDDM_CONF_DEST"
fi

sudo rsync -a --delete --chown=root:root "sddm/$SDDM_THEME/" "$SDDM_THEME_DEST/"
sudo install -Dm644 -o root -g root sddm/sddm.conf "$SDDM_CONF_DEST"
