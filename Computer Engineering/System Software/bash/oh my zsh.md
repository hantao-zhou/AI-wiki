# Combined

```zsh

sudo apt install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

source ~/.zshrc
```

# Install oh my zsh


[Oh My Zsh - a delightful & open source framework for Zsh](https://ohmyz.sh/#install)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Install power10k

[romkatv/powerlevel10k: A Zsh theme (github.com)](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
[[Fonts Configurations]]

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

ZSH_THEME="powerlevel10k/powerlevel10k"
# About rc file

It is a good idea to write your config in bashrc file and add this in zshrc

```bash
source ~/.zshrc
```