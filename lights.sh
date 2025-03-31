if [ $1 = "on" ]; then
  sed -i ""  "s/macchiato/latte/1" ~/.dotfiles/alacritty/alacritty.toml
  sed -i "" "s/macchiato/latte/" ~/.dotfiles/tmux/.tmux.conf
  sed -i "" "s/macchiato/latte/g" ~/.dotfiles/nvim/lua/plugins/catppuccin.lua
else
  sed -i ""  "s/latte/macchiato/1" ~/.dotfiles/alacritty/alacritty.toml
  sed -i "" "s/latte/macchiato/" ~/.dotfiles/tmux/.tmux.conf
  sed -i "" "s/latte/macchiato/g" ~/.dotfiles/nvim/lua/plugins/catppuccin.lua
fi

tmux source ~/.tmux.conf
