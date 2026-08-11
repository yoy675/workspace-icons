#!/bin/bash
mv ~/Desktop/* ./workspace0/
echo "How many workspaces do you have? (This will use your existing desktop icons as the default, new ones added afterwards will start empty)"
read a
mv ./workspace0 ~/Desktop/
for (( i=1; i<$a; i++)); do
	cp -r ~/Desktop/workspace0/ ~/Desktop/workspace$i/
done
[ -d ~/.local/bin ] || mkdir ~/.local/bin
mv ./workspaces.bash ~/.local/bin/
sed -i 's|\$path|$HOME/.local/bin|' ./workspaces.desktop
[ -d ~/.config/autostart ] || mkdir ~/.config/autostart
mv ./workspaces.desktop ~/.config/autostart/