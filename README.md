# dotfiles

This is my dotfiles setup.

## Setup different configs:

```
git clone https://github.com/plnguyen2908/dotfiles ~/.dotfiles/
ln -s ~/.dotfiles/app ~/.config/app
```

## TMUX setup

- require tmux version > 3.0 or else it will crash
- Download catpuccin setup:

```
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.3.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

- Download tmux-cpu:

```
$ git clone https://github.com/tmux-plugins/tmux-cpu.git ~/.config/tmux/plugins/tmux-plugins/tmux-cpu
```

- Download tmux-battery:

```
git clone https://github.com/tmux-plugins/tmux-battery ~/.config/tmux/plugins/tmux-plugins/tmux-battery
```

## Neovim setup

- Require the nvim to be at least 0.12.1
