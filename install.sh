#!/bin/sh
mv ~/Desktop/* ./workspaces0/
echo "How many workspaces do you have?"
read a
for (( i=1; i<=$a; i++)); do
	cp -r ~/Desktop/workspace0/ ~/Desktop/workspace$i/
done
mv ./workspaces. ~/Desktop/
mv ./workspaces.bash ~/.local/bin/
sed -i 's|\$path|$HOME/.local/bin/workspaces.bash' ./workspaces.desktop
mv ./workspaces.desktop ~/.config/autostart/