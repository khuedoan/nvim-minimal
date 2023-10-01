# Minimum viable Neovim config

I use this for troubleshooting on remote servers or computers that aren't mine.
It should also be useful as a starting point for beginners.

## Usage

Install the following packages:

- `neovim` >= v0.9.0
- `fzf`
- `ripgrep`

```sh
# Arch
sudo pacman -S neovim fzf ripgrep
```

```sh
# Debian/Ubuntu
sudo apt install neovim fzf ripgrep
```

```sh
# Fedora/RedHat/CentOS/Rocky
sudo dnf install neovim fzf ripgrep
```

```sh
# Alpine
sudo apk add neovim fzf ripgrep
```

```sh
# macOS Homebrew
brew install neovim fzf ripgrep
```

```nix
# NixOS
{
  environment.systemPackages = with pkgs; [
    neovim
    fzf
    ripgrep
  ];
}
```

Then clone the config (or just copy the `init.lua` file to `~/.config/nvim/init.lua`):

```sh
git clone https://github.com/khuedoan/nvim-minimal ~/.config/nvim
```
