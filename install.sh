#!/bin/sh

link_wezterm_config() {
  SOURCE="$(pwd)/.wezterm.lua"
  TARGET="$HOME/.wezterm.lua"
  # Check if the source file exists
  if [ ! -f "$SOURCE" ]; then
    echo "Error: .wezterm.lua not found in the current directory."
    return 1
  fi
  # Remove existing target if it's a file or symlink
  if [ -L "$TARGET" ] || [ -f "$TARGET" ]; then
    echo "Removing existing $TARGET"
    rm -f "$TARGET"
  fi
  # Create the symbolic link
  ln -s "$SOURCE" "$TARGET"
  echo "Linked $TARGET -> $SOURCE"
}

link_wezterm_config
