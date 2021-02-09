This repository is a compilation of my personal git alias configuration and custom helper scripts that I use on a day to day basis.

Please read the contents of `alias.gitconfig` to understand the shortcuts

## Installation

- Copy the contents of `alias.gitconfig` to your `.gitconfig` file

#### Option 1 - Recommended

- Clone the repository to you development directory
- Add git-helpers/bin to your $PATH

```
git clone https://github.com/ibaguio/git-helpers.git
cd git-helpers/bin/
echo "export PATH=\$PATH:`pwd`" >> ~/.zshrc
```

#### Option 2

- Copy the contents of `git-helpers/bin` to your `/usr/local/bin` directory

```
git clone https://github.com/ibaguio/git-helpers.git
cd git-helpers/
cp bin/git-* /usr/local/bin/
```


- Run `git helpme` to show the list of helper scripts and their description


Additionally, you may also alias `git` with `g`. Add this to your `~/.bashrc` or `~/.zshrc`

```
alias g=git
```

or

```
echo "alias g=git" >> `~/.zshrc`
```
