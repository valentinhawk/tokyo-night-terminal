#!/usr/bin/env bash
# Tokyo Night Terminal - Auto Installer
# Detects your OS and terminal, installs the theme automatically.

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
THEMES_DIR="$REPO_DIR/themes"

# Colors for output
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info() { echo -e "${BLUE}[info]${NC} $1"; }
success() { echo -e "${GREEN}[done]${NC} $1"; }
warn() { echo -e "${YELLOW}[warn]${NC} $1"; }
error() { echo -e "${RED}[error]${NC} $1"; exit 1; }

detect_os() {
    case "$(uname -s)" in
        Darwin*)  echo "macos" ;;
        Linux*)   echo "linux" ;;
        MINGW*|MSYS*|CYGWIN*) echo "windows" ;;
        *)        error "Unsupported OS: $(uname -s)" ;;
    esac
}

install_windows_terminal() {
    local settings_dir
    settings_dir=$(find "$LOCALAPPDATA/Packages" -maxdepth 1 -name "Microsoft.WindowsTerminal*" 2>/dev/null | head -1)

    if [ -z "$settings_dir" ]; then
        warn "Windows Terminal not found. Skipping."
        return
    fi

    local settings_file="$settings_dir/LocalState/settings.json"

    if [ ! -f "$settings_file" ]; then
        warn "Windows Terminal settings.json not found. Skipping."
        return
    fi

    info "Installing for Windows Terminal..."

    local theme_json
    theme_json=$(cat "$THEMES_DIR/windows-terminal.json")

    if grep -q '"Tokyo Night"' "$settings_file"; then
        warn "Tokyo Night already exists in Windows Terminal. Skipping scheme."
    else
        local tmp_file=$(mktemp)
        node -e "
            const fs = require('fs');
            const settings = JSON.parse(fs.readFileSync('$settings_file', 'utf8'));
            const theme = JSON.parse(fs.readFileSync('$THEMES_DIR/windows-terminal.json', 'utf8'));
            if (!settings.schemes) settings.schemes = [];
            settings.schemes.push(theme);
            settings.profiles.defaults = settings.profiles.defaults || {};
            settings.profiles.defaults.colorScheme = 'Tokyo Night';
            fs.writeFileSync('$settings_file', JSON.stringify(settings, null, 4));
        "
        success "Windows Terminal theme installed and activated."
    fi
}

install_terminal_app() {
    info "Installing for Terminal.app..."
    open "$THEMES_DIR/tokyo-night.terminal"
    sleep 1
    defaults write com.apple.Terminal "Default Window Settings" -string "Tokyo Night Default"
    defaults write com.apple.Terminal "Startup Window Settings" -string "Tokyo Night Default"
    success "Terminal.app theme installed and set as default."
}

install_iterm2() {
    local iterm_dir="$HOME/Library/Application Support/iTerm2"
    if [ ! -d "$iterm_dir" ]; then
        warn "iTerm2 not found. Skipping."
        return
    fi

    info "Installing for iTerm2..."
    open "$THEMES_DIR/iterm2.itermcolors"
    success "iTerm2 color preset imported. Set it in Preferences > Profiles > Colors > Color Presets."
}

install_alacritty() {
    local config_dir

    case "$(detect_os)" in
        macos)  config_dir="$HOME/.config/alacritty" ;;
        linux)  config_dir="$HOME/.config/alacritty" ;;
        windows) config_dir="$APPDATA/alacritty" ;;
    esac

    if [ ! -d "$config_dir" ]; then
        warn "Alacritty config not found at $config_dir. Skipping."
        return
    fi

    info "Installing for Alacritty..."
    cp "$THEMES_DIR/alacritty.toml" "$config_dir/tokyo-night.toml"
    success "Alacritty theme copied to $config_dir/tokyo-night.toml"
    info "Add 'import = [\"~/.config/alacritty/tokyo-night.toml\"]' to your alacritty.toml"
}

install_ghostty() {
    local config_dir="$HOME/.config/ghostty"

    if [ ! -d "$config_dir" ]; then
        warn "Ghostty config not found. Skipping."
        return
    fi

    info "Installing for Ghostty..."
    local themes_dir="$config_dir/themes"
    mkdir -p "$themes_dir"
    cp "$THEMES_DIR/ghostty.config" "$themes_dir/tokyo-night"
    success "Ghostty theme installed. Add 'theme = tokyo-night' to your config."
}

install_warp() {
    local warp_dir="$HOME/.warp/themes"

    if [ ! -d "$HOME/.warp" ]; then
        warn "Warp not found. Skipping."
        return
    fi

    info "Installing for Warp..."
    mkdir -p "$warp_dir"
    cp "$THEMES_DIR/warp.yaml" "$warp_dir/tokyo_night.yaml"
    success "Warp theme installed. Select it in Warp Settings > Appearance > Themes."
}

main() {
    echo ""
    echo -e "${BLUE}  Tokyo Night Terminal${NC}"
    echo -e "  ━━━━━━━━━━━━━━━━━━━━"
    echo ""

    local os
    os=$(detect_os)
    info "Detected OS: $os"
    echo ""

    case "$os" in
        windows)
            install_windows_terminal
            install_alacritty
            ;;
        macos)
            install_terminal_app
            install_iterm2
            install_alacritty
            install_ghostty
            install_warp
            ;;
        linux)
            install_alacritty
            install_ghostty
            ;;
    esac

    echo ""
    success "Installation complete."
    echo ""
}

main
