### Configuration for:
* [Cherrytree](./cherrytree/README.md)
* [Visual Studio Code](./code)
* [NVim](./nvim)
* [Oh-My-Zsh](./oh-my-zsh)
* [tmux](./tmux)
* [vifm](./vifm)
* [Vim](./vim)
* [Zsh](./zsh)

### Oh-my-zsh

* All aliases are described in .aliases file. 
* Command "source $HOME/.aliases" added in .zshrc.

### Tmux
* Base config install from https://github.com/gpakosz/.tmux
* Install xclip for correct work with system buffer
```sh
sudo apt-get install xclip
```

### Vifm
* Color schemes install from https://github.com/vifm/vifm-colors

### SSH
* Config for access via SSH to two GitHub accounts (andpop and andpop-mrsu). Befor cloning repos from andpop-mrsu we have to tweak addresses like git@github.com-mrsu:andpop-mrsu/repo_name.
* Command for generating SSH key for additional accounts: 
```sh
ssh-keygen -t rsa -b 4096 -C “andrvpopov@gmail.com”
```
Also we have to input another name for key file (id_rsa by default).
