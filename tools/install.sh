set -e

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove $ZSH if you want to install"
  exit
fi

printf "\e[0;34mCloning Oh My Zsh...\e[0m\n"
hash git >/dev/null && /usr/bin/env git clone https://github.com/davidxia/oh-my-zsh.git ~/.oh-my-zsh || {
  echo "git not installed"
  exit
}

printf "\e[0;34mLooking for an existing zsh config...\e[0m\n"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  printf "\e[0;33mFound ~/.zshrc.\e[0m \e[0;32mBacking up to ~/.zshrc.pre-oh-my-zsh\e[0m\n";
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

printf "\e[0;34mUsing the Oh My Zsh template file and adding it to ~/.zshrc\e[0m\n"
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
sed -i -e "/export PATH=/ c\\
export PATH=\"$PATH\"
" ~/.zshrc

printf "\e[0;34mTime to change your default shell to zsh!\e[0m\n"
chsh -s `which zsh`

printf "\e[0;32m"'         __                                     __   '"\e[0m\n"
printf "\e[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\e[0m\n"
printf "\e[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\e[0m\n"
printf "\e[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\e[0m\n"
printf "\e[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\e[0m\n"
printf "\e[0;32m"'                        /____/                       '"\e[0m\n"

echo "\n\n \033[0;32m....is now installed.\033[0m"
echo "\n\n \033[0;32mPlease look over the ~/.zshrc file to select plugins, themes, and options.\033[0m"
echo "\n\n \033[0;32mp.s. Follow us at http://twitter.com/ohmyzsh.\033[0m"
/usr/bin/env zsh
. ~/.zshrc
