# wsl-dotfiles

- Implemented based on https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
- tmux config based on https://github.com/gpakosz/.tmux

## Initial Setup

```shell
git init --bare $HOME/wsl-dotfiles.git
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/wsl-dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no

dotfiles remote add origin git@github.com:shanec-/wsl-dotfiles.git
```

## Restoring into another system

```shell
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/wsl-dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo "wsl-dotfiles.git" >> .gitignore
git clone --bare git@github.com:shanec-/wsl-dotfiles.git $HOME/wsl-dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

