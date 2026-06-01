#!/bin/sh
set -eu

USER_PACKAGES="fuzzel ghostty hypr mako waybar"
SYSTEM_PACKAGES="sddm"

stow $USER_PACKAGES

sudo stow -t / $SYSTEM_PACKAGES
