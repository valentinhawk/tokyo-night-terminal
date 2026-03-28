# Tokyo Night Terminal

A clean, dark theme for your terminal. One command to install on any OS.

## Colors

| Color | Hex | |
|-------|-----|-|
| Background | `#1A1B26` | ![](https://img.shields.io/badge/_-1A1B26?style=flat-square&color=1A1B26) |
| Foreground | `#C0CAF5` | ![](https://img.shields.io/badge/_-C0CAF5?style=flat-square&color=C0CAF5) |
| Black | `#15161E` | ![](https://img.shields.io/badge/_-15161E?style=flat-square&color=15161E) |
| Red | `#F7768E` | ![](https://img.shields.io/badge/_-F7768E?style=flat-square&color=F7768E) |
| Green | `#9ECE6A` | ![](https://img.shields.io/badge/_-9ECE6A?style=flat-square&color=9ECE6A) |
| Yellow | `#E0AF68` | ![](https://img.shields.io/badge/_-E0AF68?style=flat-square&color=E0AF68) |
| Blue | `#7AA2F7` | ![](https://img.shields.io/badge/_-7AA2F7?style=flat-square&color=7AA2F7) |
| Purple | `#BB9AF7` | ![](https://img.shields.io/badge/_-BB9AF7?style=flat-square&color=BB9AF7) |
| Cyan | `#7DCFFF` | ![](https://img.shields.io/badge/_-7DCFFF?style=flat-square&color=7DCFFF) |

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
