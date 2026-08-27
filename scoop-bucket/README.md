# wicast Scoop Bucket

A personal [Scoop](https://scoop.sh) bucket.

## Add this bucket

```powershell
scoop bucket add wicast https://github.com/wicast/scoop-bucket
```

## Available apps

| App | Command |
| --- | --- |
| DSH Desktop | `scoop install dsh-desktop` |

## DSH Desktop

Community-maintained desktop client for [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness).
Turns DeepSeek Harness into a ready-to-use local desktop app for Windows. **Not an official DeepSeek product.**

- Homepage: https://dshdesktop.cn
- Source: https://github.com/anywhere-labs/dsh-desktop
- License: MIT

### Notes

- The Windows installer is an NSIS package. The manifest installs it silently into
  Scoop's managed directory (`/S /D=$dir`) and uses the bundled `Uninstall DSH Desktop.exe`
  for removal.
- DSH Desktop bundles its own Node.js / DSH CLI / pnpm runtime, so no global PATH changes
  are required.
- User data is stored in `%APPDATA%\DSH Desktop`.

## Updating this bucket

Run `scoop update` to refresh bucket metadata and `scoop update dsh-desktop` to upgrade the app.
The `checkver` / `autoupdate` fields in each manifest let `scoop checkver` / `scoop update`
track new GitHub releases automatically.
