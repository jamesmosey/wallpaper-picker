# Wallpaper Picker Script
### A wallpaper picker script for Wayland using WOFI and swww.

## Prerequisites
- Install `swww` from <a href="https://github.com/LGFae/swww/tree/main">this repository.</a>
- Install `wofi` as per <a href="https://hg.sr.ht/~scoopta/wofi">this documentation.</a>

## Configuration
Edit the script `wp-new.sh` and change the file paths to your own, including the directory where your wallpapers are stored. If you do not wish to make your own wofi config, add the `config`, `colors` and `style.css` files to your wofi directory.
The print statements may also be edited to fit your wallpapers.

## Usage
Simply set the `wp-init.sh` script to execute on launch and create a keybind to execute `wp-new.sh` whenever you'd like.
