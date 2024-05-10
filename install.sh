apt update
apt upgrade
apt install -y zsh nala lsd neofetch xfce4-terminal
chsh -s $(which zsh)

mv .zshrc .zshrc_default
cp -f zshrc /home/$username/
mv zshrc .zshrc

mkdir -p /home/$username/.zsh
mkdir -p /home/$username/.themes
mkdir -p /home/$username/.icons

#Si deseas agregar los temas e iconos los puedes encontrar en las carpetas
#/home/$username/.themes
#/home/$username/.icons

cp icons /home/$username/.icons
cp themes /home/$username/.themes
cp zsh /home/$username/.zsh/

git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/$username/.zsh/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$username/.zsh/

cp -f terminal/terminalrc $username/.config/xfce4/terminal/

