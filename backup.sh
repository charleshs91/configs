#!/bin/sh

backup_zsh_configs() {
    DEST=$(pwd)

    if [ ! -f "$HOME/.zshrc" ]; then
        echo "Error: ~/.zshrc not found."
        return 1
    fi
    if [ ! -f "$HOME/.zprofile" ]; then
        echo "Error: ~/.zprofile not found."
        return 1
    fi
    echo "Backing up ~/.zshrc and ~/.zprofile"
    cp "$HOME/.zshrc" "$DEST/.zshrc"
    cp "$HOME/.zprofile" "$DEST/.zprofile"
    echo "Backups created."
}

backup_zsh_configs
