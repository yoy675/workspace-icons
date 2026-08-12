# workspace-icons

Using different icons for different workspaces on the Cinnamon desktop.

This repository contains two installation/usage options — a Cinnamon extension (recommended for Cinnamon users) and a script-based installer for other environments.

For Cinnamon (Cinnamon extension)
--------------------------------
The Cinnamon extension is contained in:

Cinnamon Extension/workspace-icons@yoy675

Local installation (for testing or local use):

```bash
mkdir -p ~/.local/share/cinnamon/extensions
cp -r "Cinnamon Extension/workspace-icons@yoy675" ~/.local/share/cinnamon/extensions/
# restart Cinnamon (log out/in or run):
cinnamon --replace &
```

Enable the extension using the Extensions settings panel in Cinnamon.


Other installations (script-based)
----------------------------------
If you are not using Cinnamon or prefer the script-based approach included in this repository, use the installer script at the project root:

```bash
./install.sh
```

This installer runs the repository's script-based setup (copying scripts, desktop files, or other helpers). Consult `install.sh` for exact behavior and required privileges (it may require sudo for system-wide installation).

Usage
-----
- If using the Cinnamon extension: enable it in the Extensions panel and configure any settings via the extension's preferences (if provided).
- If using the scripts: see `workspaces.bash` and `workspaces.desktop` for usage examples and configuration.

License
-------
See the LICENSE file in the repository.
