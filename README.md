# dots

My macOS dotfiles and machine bootstrap scripts. Everything is themed with [Catppuccin Macchiato](https://catppuccin.com) wherever a theme is available.

## Layout

```
.
├── config/      # Config files for each tool; symlinked into place
├── instances/   # One directory per machine: Brewfile and setup entry points
└── scripts/     # Reusable installers and the symlink helper
```

### Instances

Each machine has its own directory under `instances/`, with its own `Brewfile` and a small set of entry-point scripts that call the shared scripts in `scripts/`.

| Instance       | Notes                                                                                     |
| -------------- | ----------------------------------------------------------------------------------------- |
| `macbook-neo`  | Personal laptop.                                                                          |
| `mac-mini`     | Personal desktop. Same as `macbook-neo` plus more apps.                                   |
| `macbook-work` | Work laptop. Uses Colima instead of Docker Desktop App Store apps.                        |

Entry points in each instance directory:

| Script                        | What it does                                                                                                   |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `setup.sh`                    | Installs Homebrew, Oh My Zsh, the Oh My Zsh plugins, the tmux plugins and the nvim config.                     |
| `Brewfile`                    | Formulae, casks and Mac App Store apps for the machine (installed with `brew bundle`).                         |
| `config.sh`                   | Symlinks the configs from `config/` that the machine uses.                                                     |
| `setup-runtimes.sh`           | Installs the latest LTS Node.js through `nvm` and Python 3.13 through `pyenv`.                                 |
| `install-custom-packages.sh`  | Installs packages that are not in Homebrew (not present for `macbook-work`).                                   |
| `post-setup.sh`               | Installs VSCodium extensions, rebuilds the `bat` theme cache and applies the `fast-syntax-highlighting` theme. |

## Setting up a new machine

Clone the repository somewhere permanent; the configs are symlinked, so moving or deleting the clone breaks them.

```sh
git clone https://github.com/moonstar-x/dots.git ~/dots
cd ~/dots/instances/<instance>
```

Then run the steps in order:

```sh
# 1. Homebrew, Oh My Zsh, plugins and nvim config
bash setup.sh

# 2. Restart your shell before. Install all packages.
brew bundle

# 3. Symlink configs (replaces ~/.zshrc, ~/.gitconfig, etc.)
bash config.sh

# 4. Node.js and Python
bash setup-runtimes.sh

# 5. Packages outside Homebrew
bash install-custom-packages.sh

# 6. Extensions and theme caches
bash post-setup.sh
```

A few notes on the order:

- `brew bundle` has to run before `config.sh` and the later steps, since they rely on tools from the Brewfile (`nvm`, `pyenv`, `bat`, `codium`, `gh`, `cargo`).
- `config.sh` must run before `setup-runtimes.sh` and `post-setup.sh`, because both source `~/.zshrc`.
- `gh-dash` is installed as a `gh` extension, so `gh auth login` needs to be done before `install-custom-packages.sh`.
- `comfy-cli` (mac-mini only) is installed with `pip`, so it needs the Python from `setup-runtimes.sh`.
- Mac App Store apps in the Brewfile need you to be signed in to the App Store.

## Configs

`scripts/symlink-config.sh <name>` links a single config into place. It's what `config.sh` calls for each entry in its list.

| Name           | Linked to                                                                  |
| -------------- | -------------------------------------------------------------------------- |
| `atuin`        | `~/.config/atuin/`                                                         |
| `bat`          | `~/.config/bat/`                                                           |
| `btop`         | `~/.config/btop/`                                                          |
| `eza`          | `~/Library/Application Support/eza/theme.yml`                              |
| `fastfetch`    | `~/.config/fastfetch/config.jsonc`                                         |
| `gh-dash`      | `~/.config/gh-dash/config.yml`                                             |
| `ghostty`      | `~/Library/Application Support/com.mitchellh.ghostty/config`               |
| `git`          | `~/.gitconfig`, `~/.gitignore_global`                                      |
| `jellyfin-tui` | `~/Library/Application Support/jellyfin-tui/config.yaml`                   |
| `lazydocker`   | `~/Library/Application Support/lazydocker/config.yml`                      |
| `lazygit`      | `~/Library/Application Support/lazygit/config.yml`                         |
| `posting`      | `~/.config/posting/config.yaml`, `~/.local/share/posting/themes`           |
| `starship`     | `~/.config/starship.toml`                                                  |
| `sublime-text` | `~/Library/Application Support/Sublime Text/Packages/User/`                |
| `superfile`    | `~/Library/Application Support/superfile/`                                 |
| `tmux`         | `~/.config/tmux/tmux.conf`                                                 |
| `vscodium`     | `~/Library/Application Support/VSCodium/User/settings.json`                |
| `xcode`        | `~/Library/Developer/Xcode/UserData/FontAndColorThemes/`                   |
| `zsh`          | `~/.zprofile`, `~/.zshrc`, `~/.zsh/`                                       |
| `zsh-fsh`      | `~/.config/fsh/catppuccin-macchiato.ini`                                   |

Existing files at these paths are overwritten.

## Adding things

- **A new config:** put the files under `config/<name>/`, add a `<name>()` function to `scripts/symlink-config.sh`, and add `<name>` to the `configs` list in each instance's `config.sh`.
- **A package not in Homebrew:** add a function to `scripts/install-custom-package.sh` and list it in the instance's `install-custom-packages.sh`.
- **A new machine:** copy an existing directory in `instances/` and adjust its `Brewfile` and lists.
