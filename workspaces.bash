#!/bin/bash

# This function runs your commands.
# It receives the new workspace index as its first argument (e.g., "0", "1", "2")
run_on_workspace_change() {
    local i=$1
    echo "i=$i"
    [ -d $HOME/Desktop/workspace$i ] || mkdir "$HOME/Desktop/workspace$i"
    xdg-user-dirs-update --set DESKTOP "$HOME/Desktop/workspace$i"
    case "$DESKTOP_SESSION" in
		cinnamon)	nemo-desktop -q
					sleep 0.1
					nemo-desktop &;;
		plasma)		:;;
    esac
}

# --- Main loop ---

# Listen for all future changes
# xprop -spy tells the X server to notify us of changes to this property
# The loop will only run *when* a change happens.
xprop -root -spy _NET_CURRENT_DESKTOP | while read -r line; do
    # The output looks like: _NET_CURRENT_DESKTOP(CARDINAL) = 1
    # We just want the last part (the "1")
    sleep 0.1
    new_ws=$(echo $line| awk '{print $3}')
    run_on_workspace_change $new_ws
done

exit 0