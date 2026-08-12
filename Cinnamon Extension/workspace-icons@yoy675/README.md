Workspace Icons — Cinnamon extension (workspace-icons@yoy675)

This folder is the Cinnamon extension bundle. It is named with the extension UUID (workspace-icons@yoy675) and contains the required files for a Cinnamon extension: `metadata.json` and `extension.js`.

Purpose
- Prepare the extension folder so it can be packaged and submitted to the Linux Mint "cinnamon-spices-extensions" (Cinnamon Spices) repository.

What this update does
- Ensures metadata.json contains the required fields (uuid, name, description, version, cinnamon-version, author, url) and references an `icon.png`.
- Keeps the extension implementation in `extension.js` as-is.

Submission checklist for Cinnamon Spices
1. Folder name matches the UUID in metadata.json (workspace-icons@yoy675).
2. Include `metadata.json` and all extension files (`extension.js`, `prefs.js` if applicable, `stylesheet.css` if used).
3. Add an `icon.png` (128x128 recommended) and optional screenshots (`screenshot-1.png`, ...).
4. Zip the contents of the extension folder (not the parent folder) for submission to Cinnamon Spices:

```bash
cd "Cinnamon Extension"
zip -r workspace-icons@yoy675.zip "workspace-icons@yoy675"
```

Local installation (Cinnamon)
- For testing/installation on a Cinnamon desktop, copy the extension into your local Cinnamon extensions directory:

```bash
mkdir -p ~/.local/share/cinnamon/extensions
cp -r "Cinnamon Extension/workspace-icons@yoy675" ~/.local/share/cinnamon/extensions/
# restart Cinnamon (log out/in or run):
cinnamon --replace &
```

- Enable the extension from the Extensions settings panel.

Notes and recommendations
- Add an `icon.png` (128x128) to this folder so the Cinnamon Spices web UI can show the extension icon.
- Add screenshots to help reviewers and users understand the extension.
- Keep `metadata.json` version incremented for new submissions.

If you want, I can add a placeholder `icon.png` and an example screenshot, or create the zip file inside the repo for you to download. Tell me which and I'll add them.