#!/bin/bash

# Install yay if not present
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
fi

AUR_PACKAGES=(
    zen-browser-bin
    espanso-x11-bin
    slack-desktop
    ttf-monocraft-git
    spotify
    downgrade
    pandoc-bin
    yt-dlp-git
    greenclip
    jre
    httptap-bin
    rtl_433-git
    mcrcon
    sublime-text-4
    i3-resurrect-git
    tuxpaint
    mssql-tools
)
# pandoc-bin = million less haskell

# Check
MISSING_PACKAGES=()
for pkg in "${AUR_PACKAGES[@]}"; do
    if ! yay -Qq "$pkg" &> /dev/null; then
        MISSING_PACKAGES+=("$pkg")
    fi
done

# Yay
if [ ${#MISSING_PACKAGES[@]} -gt 0 ]; then
    echo "Installing missing AUR packages: ${MISSING_PACKAGES[*]}"
    yay -S --noconfirm "${MISSING_PACKAGES[@]}"
else
    echo "All AUR packages already installed. Running system update..."
    yay -Syu --noconfirm
fi
echo "Done!"

# Some more yay
# carbonyl-bin
# ttf-comic-sans
# bruno-bin
# gtk-theme-arc-gruvbox-git
# steghide
# browsh-bin
# netdiscover
# pkhex-bin
# rtl8192su-dkms
# diskonaut


#### Set up llm cli
#```sh
#pipx install llm
#llm install llm-deepseek
#llm keys set deepseek
#cat some.log | llm -m deepseek-chat 'tldr this'
#```
