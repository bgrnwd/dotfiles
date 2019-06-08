#!/bin/bash

echo "Copying i3 config..."
cp ~/.i3/config ../i3/

echo "Copying polybar config..."
cp -r ~/.config/polybar/* ../polybar

echo "Copying compton config..."
cp ~/.config/compton.conf ../compton

echo "Copying betterlockscreenrc..."
cp ~/.config/betterlockscreenrc ../betterlockscreen/betterlockscreenrc

echo "Copying i3exit..."
cp /usr/bin/i3exit ../betterlockscreen/i3exit

echo "Copying neofetch config..."
cp ~/.config/neofetch/config.conf ../neofetch

echo "Copying powerline shell config and theme..."
cp ~/.config/powerline-shell/config.json ../powerline-shell

echo "Copying rofi config..."
cp ~/.config/rofi/config ../rofi

echo "Copying Xresources..."
cp ~/.Xresources ../Xresources

echo "Copying zshrc..."
cp ~/.zshrc ../termite

echo "Copying termite config..."
cp ~/.config/termite/config ../termite

echo "Copying cava config"
cp ~/.config/cava/config ../cava

echo "Done"