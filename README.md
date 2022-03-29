This repository is a compilation of my personal git alias configuration and custom helper scripts that I use on a day to day basis.

Please read the contents of `alias.gitconfig` to understand the shortcuts

If you're not yet familiar with git aliases, https://www.atlassian.com/git/tutorials/git-alias is a great resource to get started learning.

## Installation

Execute the `install.sh` found in this repository


Via wget
```
wget -q -O - https://raw.githubusercontent.com/ibaguio/git-helpers/master/install.sh | bash
```

Via curl
```
curl -s https://raw.githubusercontent.com/ibaguio/git-helpers/master/install.sh | bash
```


#### Manually

- Clone the repository to `~/.git-helpers`

```
git --quiet https://github.com/ibaguio/git-helpers.git ~/.git-helpers
```

- Make sure the helper scripts can be executed

```
chmod a+x ~/.git-helpers/bin/*
```

- add the `git-helpers/bin` to your **PATH**

```
cd ~/.git-helpers/bin/
echo "alias g=git" >> ~/.bashrc
echo "export PATH=\$PATH:`pwd`" >> ~/.bashrc
```

- include the aliases to your `.gitconfig` file

```
# append this to .gitconfig
[include]
   path = ~/.git-helpers/alias.gitconfig
```

#### Finally

Run

```
git helpme
```