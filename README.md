# dotfiles

## NeoVim

NeoVim can be configured with config files symlinked like so:

```
ln -s <root-dir>/init.lua $HOME/.config/nvim/
ln -s <root-dir/lua/ $HOME/.config/nvim/
```

## tmux

tmux based on configuration: https://github.com/gpakosz/.tmux 

```bash
ln -s .tmux.conf ~/
cp .tmux.conf.local ~/.tmux.conf.local
```
