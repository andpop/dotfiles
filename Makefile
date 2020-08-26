# vim: noexpandtab
install: install-vim install-zsh install-vifm install-vscode install-ssh install-tmux

install-vim:
	if [ -f ~/.vimrc ]; then cp ~/.vimrc ~/.vimrc_backup; fi
	cp ./files/.vimrc ~/.vimrc

install-zsh:
	if [ -f ~/.zshrc ]; then cp ~/.zshrc ~/.zshrc_backup; fi
	cp ./files/.zshrc ~/.zshrc
	if [ -f ~/.aliases ]; then cp ~/.aliases ~/.aliases_backup; fi
	cp ./files/.aliases ~/.aliases

install-vifm:
	if [ -f ~/.config/vifm/vifmrc ]; then cp ~/.config/vifm/vifmrc ~/.config/vifm/vifmrc_backup; fi
	cp ./files/.config/vifm/vifmrc ~/.config/vifm/vifmrc

install-vscode:
	if [ -f ~/.config/Code/User/keybindings.json ]; then cp ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json_backup ; fi
	cp ./files/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
	if [ -f ~/.config/Code/User/settings.json ]; then cp ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json_backup; fi
	cp ./files/.config/Code/User/settings.json ~/.config/Code/User/settings.json

install-ssh:
	if [ -f ~/.ssh/config ]; then cp ~/.ssh/config ~/.ssh/config_backup; fi
	cp ./files/.ssh/config ~/.ssh/config

install-tmux:
	if ! [ -d ~/.tmux/.tmux ]; then mkdir -p ~/.tmux; fi
	if [ -f ~/.tmux/.tmux.conf ]; then cp ~/.tmux/.tmux.conf ~/.tmux/.tmux.conf_backup; fi
	cp ./files/.tmux/.tmux.conf ~/.tmux/.tmux.conf
