#!/bin/sh
sudo apt upadte
sudo apt upgrade -y

# show the directory in English, assuming the system is in Japanese
LANG=C xdg-user-dirs-update --force
cd; mv デスクトップ/* Desktop; mv ダウンロード/* Downloads; mv テンプレート/* Templates; rm -rf テンプレート; mv 公開/* Public; mv ドキュメント/* Documents; mv ミュージック/* Music; mv ピクチャ/* Pictures; mv ビデオ/* Videos
rm -rf デスクトップ ダウンロード テンプレート 公開 ドキュメント ミュージック ピクチャ ビデオ

# git cli
sudo apt install curl -y
# curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
# echo "deb [arch=$(dpkg --print-architecture)  > signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg]  > https://cli.github.com/packages stable main"  > | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null
#
# sudo apt update
# sudo apt upgrade -y
sudo apt install gh -y

# auto update packages
sudo dpkg-reconfigure -plow unattended-upgrades

# install applications, fonts, etc.
# VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
udo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# fonts
sudo apt-get install fonts-ipafont -y

# tweak tools
sudo apt install gnome-tweaks

# reference
# https://zenn.dev/kusaremkn/articles/1262af3dea93a3
# https://www.kkaneko.jp/tools/ubuntu/ubuntu_setup.html#S12


# python
# https://qiita.com/murakami77/items/b612734ff209cbb22afb

# IP address
# https://gihyo.jp/admin/serial/01/ubuntu-recipe/0708
