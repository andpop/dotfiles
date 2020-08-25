# vim: noexpandtab
install: install-vim install-zsh install-vifm install-vscode install-ssh install-tmux

install-vim:
	cp ~/.vimrc ~/.vimrc_backup
	cp ./files/.vimrc ~/.vimrc

install-zsh:
	cp ~/.zshrc ~/.zshrc_backup
	cp ./files/.zshrc ~/.zshrc
	cp ~/.aliases ~/.aliases_backup
	cp ./files/.aliases ~/.aliases

install-vifm:
	cp ~/.config/vifm/vifmrc ~/.config/vifm/vifmrc_backup
	cp ./files/.config/vifm/vifmrc ~/.config/vifm/vifmrc

install-vscode:
	cp ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json_backup
	cp ./files/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
	cp ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json_backup
	cp ./files/.config/Code/User/settings.json ~/.config/Code/User/settings.json

install-ssh:
	cp ~/.ssh/config ~/.ssh/config_backup
	cp ./files/.ssh/config ~/.ssh/config

install-tmux:
	cp ~/.tmux/.tmux.conf ~/.tmux/.tmux.conf_backup
	cp ./files/.tmux/.tmux.conf ~/.tmux/.tmux.conf
