#!/bin/sh
set -eu

USER_PACKAGES="fuzzel ghostty helix hypr mako waybar yazi"
SYSTEM_PACKAGES="sddm"

stow $USER_PACKAGES

sudo stow -t / $SYSTEM_PACKAGES
