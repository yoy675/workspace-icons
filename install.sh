#!/bin/sh

mv ./Desktop/* ~/Desktop/
mv ./workspaces.bash ~/.local/bin/
sed -i 's|\$path|$HOME/.local/bin/workspaces.bash' ./workspaces.desktop
mv ./workspaces.desktop ~/.config/autostart/