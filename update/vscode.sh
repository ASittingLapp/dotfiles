if [[ "$OSTYPE" == "darwin"* ]]; then
  [ -f $HOME/Library/Application\ Support/Code/User/settings.json ] && cp $HOME/Library/Application\ Support/Code/User/settings.json ~/dotfiles/settings.json
else
  [ -f $HOME/.config/Code/User/settings.json ] && cp $HOME/.config/Code/User/settings.json ~/dotfiles/settings.json
fi
