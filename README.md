# Dotfiles

A basic dotfiles repository which sets up my shell environment.

---

## Generate an SSH Key

```sh
./ssh.sh <your-github-email-address>
```
Follow the last prompt to copy the SSH key and add it to your GitHub.

### Useful links

- [Generate SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)
- [Add new SSH Key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

---

## Installation

```sh
./install.sh
```

---

## Install Vim plugins

```sh
vim -c 'PlugInstall'
```

---

## Set font in iTerm

1. Open up iTerm
2. Navigate to *Preferences -> Profiles -> Default -> Text*
3. Set the font to *Source Code Pro for Powerline*

---

## Extension

Customisation to the general installation process can be done in the `./install` directory. Adding new
dotfile targets can be done in the `targets` directory.

---

### Adding symbolically linked files
Each subdirectory will be inspected as groups of related configuration. All files and directories will be symlinked into
the current user's home directory with a dot prefix. Eg

```
./targets/vim/vimrc -> ~/.vimrc
./targets/vim/vim -> ~/.vim
```
