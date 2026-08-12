# Workspace Icons

workspace-icons@yoy675 — Switch desktop folders and icons when changing Cinnamon workspaces.

4C1 Description

This Cinnamon extension lets you present a different Desktop folder (and therefore different desktop icons) per workspace. When changing workspaces, the extension updates the XDG Desktop directory to point at a workspace-specific folder (~/Desktop/workspaceN) and refreshes the desktop so that each workspace appears to have its own set of icons.

6E0️ Features

- Per-workspace Desktop folder handling (creates ~/Desktop/workspace0, workspace1, ...)
- Copies existing Desktop contents into workspace folders on first use to give each workspace a starting set of icons
- Restores/merges workspace contents back into ~/Desktop when the extension is disabled
- Attempts to refresh desktop icons across multiple desktop environments (Cinnamon, GNOME with DING, XFCE, LXDE)

4BB Requirements

- Cinnamon desktop (tested on Cinnamon 5.x and 6.x)
- GLib/Gio provided by the Cinnamon runtime (no external dependencies)

4BE Installation (Cinnamon Spices)

This extension is prepared for submission to Linux Mint's Cinnamon Spices. When submitting, upload a zip that contains the files from this folder (do not include the parent directory in the zip).

To create the zip for submission:

```bash
cd "Cinnamon Extension"
zip -r workspace-icons@yoy675.zip "workspace-icons@yoy675"
```

4DD Local installation (for testing)

Copy the extension folder into your local Cinnamon extensions directory and restart Cinnamon:

```bash
mkdir -p ~/.local/share/cinnamon/extensions
cp -r "Cinnamon Extension/workspace-icons@yoy675" ~/.local/share/cinnamon/extensions/
# restart Cinnamon (log out/in or run):
cinnamon --replace &
```

Enable the extension using the Extensions settings panel in Cinnamon.

527 Configuration

This extension does not currently expose a graphical preferences dialog. Configuration is simple filesystem-based behavior:

- Per-workspace folders are created under `~/Desktop` as `workspace0`, `workspace1`, ...
- If you want different initial icons per workspace, seed those folders with files or symlinks before switching to that workspace.

If you want preference UI (workspace name labels, custom folder path, copy/merge behavior), file a feature request or submit a PR.

4AC Usage

- After installation, switch workspaces and observe that the Desktop icons change to the workspace-specific folder contents.
- When disabling the extension, it will attempt to merge files back from each `workspaceN` folder into `~/Desktop` and remove the workspace folders it created.

6A8 Known issues

- The extension will attempt to refresh the desktop for several desktop sessions but the exact commands used (nemo-desktop, xfdesktop, pcmanfm, gnome-extensions) may not be present on all systems. Missing commands are ignored.
- If conflicts arise when merging files back into `~/Desktop` (same filenames), the extension attempts to overwrite by default; back up your Desktop if you have important files.
- This extension changes the XDG Desktop directory using `xdg-user-dirs-update --set DESKTOP "<path>"`. Some distributions or user setups may behave differently; test carefully.

4C3 Screenshots

Add screenshots here (optional). Recommended filenames:

- screenshot-1.png
- screenshot-2.png

Place screenshots in this folder so they can be included in Cinnamon Spices listings.

4D3 Changelog

- 1.0 — Initial submission

464 Credits

Author: yoy675 — https://github.com/yoy675

4C1 License

This project inherits the repository LICENSE. See the top-level `LICENSE` file for details.
