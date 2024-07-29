#!/bin/zsh

# sudo apt update && sudo apt upgrade -y
# sudo apt install -y curl \
#      gnupg ca-certificates git \
#      gcc-multilib g++-multilib cmake libssl-dev pkg-config \
#      libfreetype6-dev libasound2-dev libexpat1-dev libxcb-composite0-dev \
#      libbz2-dev libsndio-dev freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev \
#      llvm clang build-essential

# for Fedora
sudo dnf install -y \
    pkgconfig openssl-devel clang

if [ ! -h $HOME/.config/nvim ]
then
    echo "[nvim] creating config link ..."
    ln -s $HOME/workplace/projects/dotfiles/nvim $HOME/.config/
else
    echo "[nvim] config already existed"
fi

if [ ! -h $HOME/.tmux.conf ]
then
    echo "[tmux] creating config link..."
    ln -s $HOME/workplace/projects/dotfiles/tmux/tmux.conf $HOME/.tmux.conf
else
    echo "[tmux] config already existed"
fi

rm $HOME/.zshrc
ln -s $HOME/workplace/projects/dotfiles/zsh/zshrc $HOME/.zshrc

if [ ! -h $HOME/.oh-my-zsh/themes/genrythm.zsh-theme ]
then
    echo "[oh-my-zsh] creating theme link..."
    ln -s $HOME/workplace/projects/dotfiles/ohmyzsh/genrythm.zsh-theme $HOME/.oh-my-zsh/themes/
else
    echo "[oh-my-zsh] theme already existed"
fi

source $HOME/.zshrc

