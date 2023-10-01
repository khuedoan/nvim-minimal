# Minimum viable Neovim config

I use this for troubleshooting on remote servers or computers that aren't mine.
It should also be useful as a starting point for new users.

## Usage

Install the following packages:

- `neovim` >= v0.9.0
- `fzf` (optional, it will prompt to download on first use if not found)

```sh
# Arch
sudo pacman -S neovim fzf

# Debian/Ubuntu
sudo apt install neovim fzf

# Fedora/RedHat/CentOS/Rocky
sudo dnf install neovim fzf

# Alpine
sudo apk add neovim fzf

# NixOS
{
  environment.systemPackages = with pkgs; [
    neovim
    fzf
  ];
}
```

Then clone the config (or just copy the `init.lua` file to `~/.config/nvim/init.lua`):

```sh
git clone https://github.com/khuedoan/nvim-minimal ~/.config/nvim
```
