# dotfiles

- Implementation based on https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
- tmux config based on https://github.com/gpakosz/.tmux

## Initial Setup

```shell
git init --bare $HOME/dotfiles.git
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no

dotfiles remote add origin git@github.com:shanec-/dotfiles.git
```

## Restoring into another system

```shell
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo "-dotfiles.git" >> .gitignore
git clone --bare git@github.com:shanec-/dotfiles.git $HOME/dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Tools and Configuration

- FZF - [https://github.com/junegunn/fzf](https://github.com/junegunn/fzf) 
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
- RipGrep - [https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) 
```
sudo apt-get install ripgrep
```
