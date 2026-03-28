# Tokyo Night Terminal

A clean, dark theme for your terminal. One command to install on any OS.

![Tokyo Night](https://raw.githubusercontent.com/enkia/tokyo-night-vscode-theme/master/static/ss_tokyo_night.png)

## Colors

| Color | Hex | Preview |
|-------|-----|---------|
| Background | `#1A1B26` | ![#1A1B26](https://via.placeholder.com/16/1A1B26/1A1B26.png) |
| Foreground | `#C0CAF5` | ![#C0CAF5](https://via.placeholder.com/16/C0CAF5/C0CAF5.png) |
| Black | `#15161E` | ![#15161E](https://via.placeholder.com/16/15161E/15161E.png) |
| Red | `#F7768E` | ![#F7768E](https://via.placeholder.com/16/F7768E/F7768E.png) |
| Green | `#9ECE6A` | ![#9ECE6A](https://via.placeholder.com/16/9ECE6A/9ECE6A.png) |
| Yellow | `#E0AF68` | ![#E0AF68](https://via.placeholder.com/16/E0AF68/E0AF68.png) |
| Blue | `#7AA2F7` | ![#7AA2F7](https://via.placeholder.com/16/7AA2F7/7AA2F7.png) |
| Purple | `#BB9AF7` | ![#BB9AF7](https://via.placeholder.com/16/BB9AF7/BB9AF7.png) |
| Cyan | `#7DCFFF` | ![#7DCFFF](https://via.placeholder.com/16/7DCFFF/7DCFFF.png) |

## Install

### With Claude Code (AI-powered)

Open [Claude Code](https://claude.ai/code) in your terminal and type:

```
Install the Tokyo Night terminal theme from this repo
```

Claude will detect your OS and terminal automatically, then install the theme for you.

### With the install script

```bash
git clone https://github.com/valentinhawk/tokyo-night-terminal.git
cd tokyo-night-terminal
bash install.sh
```

The script auto-detects your OS and installs for every terminal it finds.

### Manual install

<details>
<summary><b>Windows Terminal</b></summary>

1. Open Settings (`Ctrl + Shift + ,`)
2. Add the contents of [`themes/windows-terminal.json`](themes/windows-terminal.json) to your `schemes` array
3. Set `"colorScheme": "Tokyo Night"` in your profile

</details>

<details>
<summary><b>macOS Terminal.app</b></summary>

Double-click [`themes/tokyo-night.terminal`](themes/tokyo-night.terminal) to import, then set it as default in Preferences.

</details>

<details>
<summary><b>iTerm2</b></summary>

1. Go to Preferences > Profiles > Colors > Color Presets > Import
2. Select [`themes/iterm2.itermcolors`](themes/iterm2.itermcolors)
3. Choose "Tokyo Night" from the presets dropdown

</details>

<details>
<summary><b>Alacritty</b></summary>

Copy [`themes/alacritty.toml`](themes/alacritty.toml) to `~/.config/alacritty/` and add to your config:

```toml
import = ["~/.config/alacritty/alacritty.toml"]
```

</details>

<details>
<summary><b>Ghostty</b></summary>

Copy [`themes/ghostty.config`](themes/ghostty.config) to `~/.config/ghostty/themes/tokyo-night` and add to your config:

```
theme = tokyo-night
```

</details>

<details>
<summary><b>Warp</b></summary>

Copy [`themes/warp.yaml`](themes/warp.yaml) to `~/.warp/themes/` and select it in Settings > Appearance > Themes.

</details>

## Supported terminals

| Terminal | OS | Format |
|----------|------|--------|
| Windows Terminal | Windows | JSON |
| Terminal.app | macOS | .terminal |
| iTerm2 | macOS | .itermcolors |
| Alacritty | All | TOML |
| Ghostty | macOS, Linux | Config |
| Warp | macOS, Windows | YAML |

## Credits

Color palette based on [Tokyo Night](https://github.com/enkia/tokyo-night-vscode-theme) by enkia.

## License

MIT
