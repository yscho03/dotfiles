#!/usr/bin/env bash

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME"/.local/bin

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ln -sf "$DOTFILES"/zsh/zshrc "$HOME"/.zshrc


# mkdir -p "$HOME"/.nvm
# ln -sf "$DOTFILES"/nvm/default-packages "$HOME"/.nvm/default-packages
