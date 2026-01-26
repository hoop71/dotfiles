# Flip The Script `(╯°□°)╯︵ ┻━┻`
### Overthrowing default configs

<img width="399" height="63" alt="image" src="https://github.com/user-attachments/assets/5ed5069b-3a29-4489-bd44-e33bc111f667" />

Personal dotfiles featuring an Agnoster-inspired Starship prompt with powerline arrows, modern CLI tools, and a beautiful terminal setup.

## ✨ Features

### 🚀 Starship Prompt (Agnoster-Style)
- **Powerline aesthetics** with colored segments and arrow separators
- **Table flip emoticon** `(╯°□°)╯︵ ┻━┻` for maximum personality
- **Git status indicators** with Agnoster symbols:
  - `!` modified files
  - `+` staged files
  - `?` untracked files
  - `✘` deleted files
  - `⇡` ahead of remote
  - `⇣` behind remote
- **Color scheme**: Yellow table flip → Blue username → Emerald green directory → Hot pink git status
- **Language version badges** for Node.js, Python, Rust, Go

### 🛠 Modern CLI Tools
- **[eza](https://github.com/eza-community/eza)** - Modern `ls` replacement with icons and git integration
- **[bat](https://github.com/sharkdp/bat)** - `cat` with syntax highlighting
- **[fzf](https://github.com/junegunn/fzf)** - Fuzzy finder for history and files
- **[zoxide](https://github.com/ajeetdsouza/zoxide)** - Smarter `cd` command that learns your habits
- **[Starship](https://starship.rs)** - Blazing fast, customizable prompt

### 🎯 ZSH Enhancements
- **Fish-like autosuggestions** - Command suggestions as you type
- **Syntax highlighting** - Real-time command validation
- **Smart alias hints** - Learn shortcuts as you work (optional)
- **Curated alias library** - Git, Docker, Kubernetes shortcuts
- **Interactive CLI** - Manage dotfiles with `dotfiles` command

## 📦 Installation

### Prerequisites
- macOS (or Linux with Homebrew)
- [Homebrew](https://brew.sh) installed
- ZSH as your shell

### Quick Install

```bash
# Clone the repo
git clone https://github.com/hoop71/dotfiles.git ~/dotfiles

# Run the install script
cd ~/dotfiles
./install.sh

# Restart your shell
exec zsh
```

### What the install script does:

1. **Installs Homebrew packages**: starship, fzf, zoxide, eza, bat
2. **Installs Nerd Font** for icons and powerline symbols
3. **Clones ZSH plugins**: autosuggestions, syntax-highlighting
4. **Creates symlinks** for all config files:
   - `~/.zshrc` → `~/dotfiles/zsh/zshrc`
   - `~/.zshenv` → `~/dotfiles/zsh/zshenv`
   - `~/.config/starship.toml` → `~/dotfiles/starship/starship.toml`
5. **Backs up** any existing configs to `~/dotfiles_backup_[timestamp]`
6. **Creates** `~/.zshrc.local` for machine-specific configuration
7. **Adds `bin/` to PATH** for the `dotfiles` CLI tool

## 🎨 Customization

### Starship Colors

The prompt uses these colors (defined in `starship/starship.toml`):
- Username: `#4A90E2` (Medium Blue)
- Directory: `#50C878` (Emerald Green)
- Git: `#FF69B4` (Hot Pink)

To change colors, edit the hex values in `starship/starship.toml`.

### Machine-Specific Config

Use `~/.zshrc.local` for machine-specific settings like:
- Work-specific paths
- API tokens or secrets
- Custom aliases for that machine
- SSH keys

This file is gitignored and won't be tracked.

## 📂 Structure

```
dotfiles/
├── README.md               # You are here
├── CHANGELOG.md            # Version history
├── CONTRIBUTING.md         # Contribution guidelines
├── LICENSE                 # MIT License
├── CLAUDE.md               # LLM assistant guide
├── install.sh              # Automated setup script
├── bin/
│   └── dotfiles           # Interactive CLI tool
├── starship/
│   └── starship.toml      # Starship prompt config (Agnoster theme)
└── zsh/
    ├── zshrc              # Main ZSH config
    ├── zshenv             # Environment variables
    ├── alias-hints.zsh    # Learning hints for aliases
    └── aliases-library.zsh # Optional aliases to enable
```

## 🔧 CLI Tool

The `dotfiles` command provides interactive management:

```bash
dotfiles check        # Verify setup and diagnose issues
dotfiles aliases      # Browse available aliases
dotfiles hint         # Get a random productivity tip
dotfiles hints        # Toggle learning hints on/off
dotfiles update       # Pull latest changes
dotfiles benchmark    # Test shell startup speed
```

## 🔧 Included Aliases

### Git
- `new` - Create and checkout a new branch
- `ch` - Checkout branch
- `empty` - Create empty commit
- `gs`, `gd`, `ga`, `gc`, `gp`, `gl` - Git shortcuts (opt-in via aliases-library.zsh)

### Navigation
- `..` - Up one directory
- `...` - Up two directories
- `....` - Up three directories

### Modern CLI
- `ls` → `eza --icons`
- `ll` → `eza -l --icons --git` (detailed list with git status)
- `la` → `eza -la --icons --git` (includes hidden files)
- `lt` → `eza --tree --icons` (tree view)
- `cat` → `bat` (syntax highlighting)

### pnpm shortcuts
- `p` - pnpm
- `pi` - pnpm install
- `pb` - pnpm build
- `pd` - pnpm dev
- `pt` - pnpm test

**More aliases available**: See `zsh/aliases-library.zsh` for Docker, Kubernetes, and utility aliases you can enable.

## 🎯 Font Recommendations

For the best experience with powerline arrows and icons, use a Nerd Font:

- **MesloLGS NF** (recommended)
- **Fira Code Nerd Font**
- **JetBrains Mono Nerd Font**
- **Hack Nerd Font**

Download from [Nerd Fonts](https://www.nerdfonts.com/)

## 🤝 Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📝 License

MIT License - See [LICENSE](LICENSE) for details.

## 📋 Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history.

## 🙏 Credits

- Inspired by [agnoster theme](https://github.com/agnoster/agnoster-zsh-theme)
- Built with [Starship](https://starship.rs)
- Uses modern CLI tools from the Rust ecosystem
