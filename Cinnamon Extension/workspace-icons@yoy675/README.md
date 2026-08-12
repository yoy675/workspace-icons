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

Local installation
- For testing/installation on a machine, this repository provides an installer script in the project root. Installation is performed by running:

```bash
./install.sh
```

- The installer will copy the extension into your local Cinnamon extensions directory (e.g. `~/.local/share/cinnamon/extensions`) and perform any necessary setup. Prefer using `install.sh` rather than manually copying files.

Notes and recommendations
- Add an `icon.png` (128x128) to this folder so the Cinnamon Spices web UI can show the extension icon.
- Add screenshots to help reviewers and users understand the extension.
- Keep `metadata.json` version incremented for new submissions.

If you want, I can create a ZIP of the extension folder here in the repo (as an artifact) or add placeholder `icon.png` and example screenshots — tell me which and I'll add them.
