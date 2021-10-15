sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v5.8.0/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir -p ~/.config/poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v5.8.0/themes.zip -O ~/.config/poshthemes/themes.zip
unzip ~/.config/poshthemes/themes.zip -d ~/.config/poshthemes
chmod u+rw ~/.config/poshthemes/*.json
rm ~/.config/poshthemes/themes.zip
