# ltcSway-os

**ltcSway-os** is my personal, custom Fedora Atomic OS image, built using [uBlue](https://github.com/ublue-os) tools and based on [wayblue](https://github.com/lucastcottle/wayblue-fork) — a minimal, Sway-based desktop environment on Fedora Atomic.

This image includes my preferred tools, dotfiles, and configurations baked in, with automatic updates and reproducible builds via GitHub Actions.


## Features

- **Based on Wayblue (Sway + Fedora Atomic)**
  - Clean, tiling Wayland desktop using Sway
- **Automatic daily updates**
  - Powered by `ublue-update` and GitHub Actions
- **My personal dotfiles**
  - Cloned into `~/repos/dotfiles` on first login
- **Zsh as default shell**
  - Pre-installed with `stow` for dotfile management
- **Preinstalled applications**
  - Common Flatpaks: Firefox, Discord, Steam, Spotify, Stremio, GNOME Boxes, Transmission
  - Native tools: `zsh`, `nvim`, `stow`
  - Non-Flathub Flatpak: [1Password](https://1password.com/linux/)


## How It Works

- **Image source**: [`recipe.yml`](./recipe.yml)
- **Base image**: [`ghcr.io/wayblueorg/sway`](https://github.com/lucastcottle/wayblue-fork)
- **Builds**: GitHub Actions builds and signs new image versions daily (6:00 UTC)
- **Auto-updates**: Systems running this image will check for new versions and auto-rebase using `ublue-update`



## First Boot Behavior

- Clones my dotfiles into `~/repos/dotfiles`
- Sets default shell to `zsh` for new users
- Installs Flatpaks, including custom repo (1Password)
- Applies any custom system configs under `system/`


## Manual Setup (Optional)

If you need to re-stow or manually apply dotfiles:
```bash
cd ~/repos/dotfiles
stow . 
```

## Building It Yourself

This image is built via the blue-build GitHub Action. You can fork this repo and customize your own image by editing recipe.yml.

## Security

This image is signed using Sigstore and includes policies for secure OSTree updates.

## License

This repo follows the licensing of the included upstream projects. My dotfiles are MIT licensed unless otherwise noted. 
