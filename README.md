# Tokyo Night Terminal

Tokyo Night color scheme for every terminal emulator. Dark and Light variants. One command to install.

## Variants

### Tokyo Night (Dark)

| Color | Hex | |
|-------|-----|-|
| Background | `#1A1B26` | ![](https://img.shields.io/badge/_-1A1B26?style=flat-square&color=1A1B26) |
| Foreground | `#C0CAF5` | ![](https://img.shields.io/badge/_-C0CAF5?style=flat-square&color=C0CAF5) |
| Red | `#F7768E` | ![](https://img.shields.io/badge/_-F7768E?style=flat-square&color=F7768E) |
| Green | `#9ECE6A` | ![](https://img.shields.io/badge/_-9ECE6A?style=flat-square&color=9ECE6A) |
| Yellow | `#E0AF68` | ![](https://img.shields.io/badge/_-E0AF68?style=flat-square&color=E0AF68) |
| Blue | `#7AA2F7` | ![](https://img.shields.io/badge/_-7AA2F7?style=flat-square&color=7AA2F7) |
| Purple | `#BB9AF7` | ![](https://img.shields.io/badge/_-BB9AF7?style=flat-square&color=BB9AF7) |
| Cyan | `#7DCFFF` | ![](https://img.shields.io/badge/_-7DCFFF?style=flat-square&color=7DCFFF) |

### Tokyo Night Light

| Color | Hex | |
|-------|-----|-|
| Background | `#E1E2E7` | ![](https://img.shields.io/badge/_-E1E2E7?style=flat-square&color=E1E2E7) |
| Foreground | `#3760BF` | ![](https://img.shields.io/badge/_-3760BF?style=flat-square&color=3760BF) |
| Red | `#F52A65` | ![](https://img.shields.io/badge/_-F52A65?style=flat-square&color=F52A65) |
| Green | `#587539` | ![](https://img.shields.io/badge/_-587539?style=flat-square&color=587539) |
| Yellow | `#8C6C3E` | ![](https://img.shields.io/badge/_-8C6C3E?style=flat-square&color=8C6C3E) |
| Blue | `#2E7DE9` | ![](https://img.shields.io/badge/_-2E7DE9?style=flat-square&color=2E7DE9) |
| Purple | `#9854F1` | ![](https://img.shields.io/badge/_-9854F1?style=flat-square&color=9854F1) |
| Cyan | `#007197` | ![](https://img.shields.io/badge/_-007197?style=flat-square&color=007197) |

## Install

### With Claude Code (AI-powered)

Open [Claude Code](https://claude.ai/code) in your terminal and paste this:

```
Clone https://github.com/valentinhawk/tokyo-night-terminal and run the install script to install the Tokyo Night theme on my terminal. Detect my OS and terminal automatically.
```

That's it. Claude will clone the repo, detect your OS (Windows, macOS, or Linux), find your terminal, and install the theme automatically.

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
3. Set `"colorScheme": "Tokyo Night"` or `"Tokyo Night Light"` in your profile

</details>

<details>
<summary><b>macOS Terminal.app</b></summary>

Double-click [`themes/tokyo-night.terminal`](themes/tokyo-night.terminal) (dark) or [`themes/tokyo-night-light.terminal`](themes/tokyo-night-light.terminal) (light) to import, then set as default in Preferences.

</details>

<details>
<summary><b>iTerm2</b></summary>

1. Go to Preferences > Profiles > Colors > Color Presets > Import
2. Select [`themes/iterm2.itermcolors`](themes/iterm2.itermcolors)
3. Choose "Tokyo Night" from the presets dropdown

</details>

<details>
<summary><b>Alacritty</b></summary>

Copy [`themes/alacritty.toml`](themes/alacritty.toml) (dark) or [`themes/alacritty-light.toml`](themes/alacritty-light.toml) (light) to `~/.config/alacritty/` and import in your config:

```toml
import = ["~/.config/alacritty/alacritty.toml"]
```

</details>

<details>
<summary><b>Ghostty</b></summary>

Copy [`themes/ghostty.config`](themes/ghostty.config) (dark) or [`themes/ghostty-light.config`](themes/ghostty-light.config) (light) to `~/.config/ghostty/themes/` and add to your config:

```
theme = tokyo-night
```

</details>

<details>
<summary><b>Warp</b></summary>

Copy [`themes/warp.yaml`](themes/warp.yaml) (dark) or [`themes/warp-light.yaml`](themes/warp-light.yaml) (light) to `~/.warp/themes/` and select in Settings > Appearance > Themes.

</details>

## Supported terminals

| Terminal | OS | Dark | Light |
|----------|------|------|-------|
| Windows Terminal | Windows | JSON | JSON |
| Terminal.app | macOS | .terminal | .terminal |
| iTerm2 | macOS | .itermcolors | .itermcolors |
| Alacritty | All | TOML | TOML |
| Ghostty | macOS, Linux | Config | Config |
| Warp | macOS, Windows | YAML | YAML |

## Credits

Color palette by [enkia](https://github.com/tokyo-night/tokyo-night-vscode-theme), licensed under MIT.

## License

MIT
