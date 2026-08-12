# workspace-icons

Using different icons for different workspaces on the Cinnamon desktop.

Cinnamon extension
------------------
This repository contains a Cinnamon extension under `Cinnamon Extension/workspace-icons@yoy675` prepared for submission to the Linux Mint Cinnamon Spices (extensions) system.

Local installation (Cinnamon)
----------------------------
To install the extension locally for testing on Cinnamon, copy the extension folder into your Cinnamon extensions directory and restart Cinnamon:

```bash
mkdir -p ~/.local/share/cinnamon/extensions
cp -r "Cinnamon Extension/workspace-icons@yoy675" ~/.local/share/cinnamon/extensions/
# restart Cinnamon (log out/in or run):
cinnamon --replace &
```

Enable the extension using the Extensions settings panel in Cinnamon.

Packaging for Cinnamon Spices
-----------------------------
When submitting to Cinnamon Spices, zip the contents of the extension folder (the zip must contain the files, not a parent directory):

```bash
cd "Cinnamon Extension"
zip -r workspace-icons@yoy675.zip "workspace-icons@yoy675"
```

Upload `workspace-icons@yoy675.zip` to the Cinnamon Spices submission UI.

License
-------
See the LICENSE file in the repository.
