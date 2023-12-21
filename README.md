# dotfiles

## NeoVim

NeoVim can be configured with config files symlinked like so:

```
ln -s <root-dir>/init.lua $HOME/.config/nvim/
ln -s <root-dir/lua/ $HOME/.config/nvim/
```

## tmux

### Requirements

Make sure the following are installed first:

* [TPM - tmux plugin manager](https://github.com/tmux-plugins/tpm#installation)

### Config

```shell
# Link config
ln -s /full/path/to/this/repos/.tmux.conf ~/

# Initialize settings:
tmux new -s my-session

# press <Ctrl-Space>-I to load plugins
```

### Usage

[tmux cheatsheet](https://tmuxcheatsheet.com/)

* 🌟Command mode: `<Ctrl>+<Space>`

## fzf - Fuzzy finder

```shell
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
fzf --version
```

[ref](https://www.linode.com/docs/guides/how-to-use-fzf/)