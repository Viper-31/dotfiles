# dotfiles

dotfiles tracked using stow. Makes my terminal look kewl.

## Prerequisites

Install via appropriate package manager, ideally get latest version:

- [`stow`](https://github.com/aspiers/stow)
- [`tmux`](https://github.com/tmux/tmux)
- [`fish` (3.6+)](https://github.com/fish-shell/fish-shell)
- [`nvim`](https://github.com/neovim/neovim)
- [`zellij`](https://github.com/zellij-org/zellij)
- [`fzf`](https://github.com/junegunn/fzf)
- [`bat`](github.com/sharkdp/bat)
- [`fd`](https://github.com/sharkdp/fd)

## New device setup

Clone the repo

```fish
cd ~/dotfiles
make install
```

make install deploys symlinks and initializes submodules in this repo. **It does not** install plugins — see below.

## Per-tool setup

### Fisher plugin manager:

[Install fisher](https://github.com/jorgebucaran/fisher)
Then install plugins from the tracked list:
`fisher install`

Install [fzf.fish](https://github.com/PatrickF1/fzf.fish), [nvm.fish](https://github.com/jorgebucaran/nvm.fish)

### Fish (secrets):

```fish
# Edit and add your own API keys / tokens - for agentic code
$EDITOR ~/.config/fish/config.local.fisher
```

### tmux (tpm plugins):

Open tmux, press prefix + I. Installs tpm

```fish
cd ~/dotfiles
make update-submodules # refresh tpm
make restow # re-link any new/changed files
```

### Zellij (zjstatus plugin)

Download the plugin into the plugins dir (one-time):

```fish
curl -fL -o ~/dotfiles/dot-config/zellij/plugins/zjstatus.wasm \
  https://github.com/dj95/zjstatus/releases/latest/download/zjstatus.wasm
```
