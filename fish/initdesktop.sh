#! /bin/bash
#
# Install fish
 echo -e "\e[1;31m Install fish shell \e[0m"
sudo dnf install fish
# Install tldr
echo -e "\e[1;31m Install tldr \e[0m"
sudo dnf install tldr

# Install Nerd  font
echo -e "\e[1;31m Get FiraCode NERD fonts \e[0m"
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"; mkdir ~/.local/share/fonts; unzip FiraCode.zip -d ~/.local/share/fonts; fc-cache -f -v

# install starship
echo -e "\e[1;31m Install starship \e[0m"
curl -sS https://starship.rs/install.sh | sh

# set starship init in fish config
echo -e "\e[1;31m Set starship init \e[0m"
echo 'starship init fish | source' >> ~/.config/fish/fish.config

# Change default shell
echo -e "\e[1;31m Changing the shell to fish, goodbye bash \e[0m"
sudo usermod -s $(which fish) $LOGNAME

# Add personal access token from githubs to cache so we dont need password or
# add ssh-key to ssh agent
# eval 'ss-agent -s';ssh-add ~/.ssh/<insertkey
# if fishing https://unix.stackexchange.com/questions/48863/ssh-add-complains-could-not-open-a-connection-to-your-authentication-agent
# lolol
