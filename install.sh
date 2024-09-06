#!/bin/bash
set -e

if [[ -d ~/.git-helpers ]]; then
	echo "Updating git-helpers..."
	rm -fr ~/.git-helpers
else
	echo "Installing git-helpers..."
fi

# download the code
git clone --quiet https://github.com/ibaguio/git-helpers.git ~/.git-helpers

# make sure all helpers are executables
chmod a+x ~/.git-helpers/bin/*

# add git-helpers/bin to PATH
GIT_HELPERS_BIN=~/.git-helpers/bin/

# install to bash
if [[ -f ~/.bashrc ]]; then 
	grep -qxF "export PATH=\$PATH:`pwd`" ~/.bashrc || cat <<EOT >> ~/.bashrc 

# git-helpers
alias g=git
export PATH=\$PATH:$GIT_HELPERS_BIN
EOT
fi

# install to zsh
if [[ -f ~/.zshrc ]]; then 
	grep -qxF "export PATH=\$PATH:`pwd`" ~/.zshrc || cat <<EOT >> ~/.zshrc 

# git-helpers
alias g=git
export PATH=\$PATH:$GIT_HELPERS_BIN
EOT
fi

# include custom aliases to gitconfig if it doesnt exist yet
cat ~/.gitconfig | grep -q "path = ~/.git-helpers/alias.gitconfig" || {
cat <<EOT >> ~/.gitconfig
[include]
   # load custom aliases from git-helpers
   path = ~/.git-helpers/alias.gitconfig
EOT
}

echo "Success!!"