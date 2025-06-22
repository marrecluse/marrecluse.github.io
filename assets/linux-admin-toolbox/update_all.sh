#!/bin/bash
# Automatically update all packages (APT/DNF/Pacman supported)

if [ -x "$(command -v apt)" ]; then
  sudo apt update && sudo apt upgrade -y
elif [ -x "$(command -v dnf)" ]; then
  sudo dnf upgrade --refresh -y
elif [ -x "$(command -v pacman)" ]; then
  sudo pacman -Syu --noconfirm
else
  echo "Unsupported package manager"
fi
