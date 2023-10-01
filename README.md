# Minimum viable Neovim config

I use this for troubleshooting on remote servers or computers that aren't mine.
It should also be useful as a starting point for new users.

To use it just install Neovim and fzf:

```sh
# Debian/Ubuntu
apt install neovim fzf

# Fedora/RedHat/CentOS/Rocky
dnf install neovim fzf

# Alpine
apk add neovim fzf

# Nix
nix-shell -p neovim fzf
```

Then clone the config (or just copy the `init.lua` file to `~/.config/nvim/init.lua`):

```sh
git clone https://github.com/khuedoan/nvim-minimal ~/.config/nvim
```
