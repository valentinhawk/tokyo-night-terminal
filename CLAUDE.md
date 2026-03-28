# Tokyo Night Terminal

This repo contains Tokyo Night color scheme files for multiple terminal emulators.

## Install instructions for Claude Code

When the user asks to install Tokyo Night theme, run the install script:

```bash
bash install.sh
```

The script auto-detects the OS and installs the theme for all detected terminals.

## Manual install

If the script doesn't work, install manually based on the platform:

### Windows Terminal
1. Read `themes/windows-terminal.json`
2. Find the Windows Terminal settings.json (usually in `$LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_*/LocalState/settings.json`)
3. Add the JSON object to the `schemes` array
4. Set `profiles.defaults.colorScheme` to `"Tokyo Night"`

### macOS Terminal.app
1. Open `themes/tokyo-night.terminal` (double-click or `open` command)
2. Set as default in Terminal preferences

### iTerm2
1. Import `themes/iterm2.itermcolors` via Preferences > Profiles > Colors > Color Presets > Import

### Alacritty
1. Copy `themes/alacritty.toml` to `~/.config/alacritty/tokyo-night.toml`
2. Add `import = ["~/.config/alacritty/tokyo-night.toml"]` to your `alacritty.toml`

### Ghostty
1. Copy `themes/ghostty.config` to `~/.config/ghostty/themes/tokyo-night`
2. Add `theme = tokyo-night` to your Ghostty config

### Warp
1. Copy `themes/warp.yaml` to `~/.warp/themes/tokyo_night.yaml`
2. Select in Warp Settings > Appearance > Themes
