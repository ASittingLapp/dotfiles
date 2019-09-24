if [[ "$OSTYPE" == "darwin"* ]]; then
	mkdir -p $HOME/Library/Application\ Support/Code/User && cp ~/dotfiles/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
else
	mkdir -p $HOME/.config/Code/User && cp ~/dotfiles/settings.json $HOME/.config/Code/User/settings.json
fi
