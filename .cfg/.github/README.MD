# Dotfiles

A simple dotfile repository implemented using a bare git repository.

## Installation
```bash
git clone --bare https://github.com/cfrenette/cfg.git $HOME/.cfg
```

```bash
alias config = '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

The home folder must not contain any existing configuration files conflicting with the tracked files. Back up anything you want to keep:
```bash
mkdir -p .cfg-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .cfg-backup/{}
```

Run `checkout` to apply the changes and ignore untracked files:
```bash
config checkout && config config status.showUntrackedFiles no
```