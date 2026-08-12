Workspace Icons — Cinnamon extension (workspace-icons@yoy675)

This folder is the Cinnamon extension bundle. It is named with the extension UUID (workspace-icons@yoy675).

What this update does
- Ensures metadata.json contains the required fields (uuid, name, description, version, cinnamon-version, author, url) and references an `icon.png`.
- Keeps the extension implementation in `extension.js` as-is.

Submission checklist for Cinnamon Spices
1. Folder name matches the UUID in metadata.json (workspace-icons@yoy675).
2. Include `metadata.json` and all extension files (`extension.js`, `prefs.js` if applicable, `stylesheet.css` if used).
3. Add an `icon.png` (128x128 recommended) and optional screenshots (`screenshot-1.png`, ...).

Local installation (Cinnamon)
- For testing/installation on a Cinnamon desktop, copy the extension into your local Cinnamon extensions directory:

```bash
mkdir -p ~/.local/share/cinnamon/extensions
cp -r "workspace-icons@yoy675" ~/.local/share/cinnamon/extensions/
# restart Cinnamon (log out/in or run): (probably not needed)
# cinnamon --replace &
```

- Enable the extension from the Extensions settings panel.
