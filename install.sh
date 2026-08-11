#!/bin/sh
mv ~/Desktop/* ./workspace0/
echo "How many workspaces do you have?"
read a
mv ./workspace0 ~/Desktop/
for (( i=1; i<=$a; i++)); do
	cp -r ~/Desktop/workspace0/ ~/Desktop/workspace$i/
done
mv ./workspaces.bash ~/.local/bin/
sed -i 's|\$path|$HOME/.local/bin' ./workspaces.desktop
mv ./workspaces.desktop ~/.config/autostart/